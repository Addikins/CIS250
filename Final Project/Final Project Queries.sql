-- Item type selection query
select * from items where type = "Potion";
select * from items where type = "Weapon";
select * from items where type = "Armor";

-- Display all items in inventory
select inventory_slots.id as "Inventory Slot", name as Name, type as "Item", amount as "Amount", use_range as "Range", gold_value as "Value", description as "Description" from items
join inventory_slots
on items.id = inventory_slots.item_id
order by inventory_slots.id;

-- Display relevant information for all characters currently in the scene (or game level).
select current_character_stats.level as Level, name as Class, current_character_stats.health as Health,
 current_character_stats.damage as Damage, current_character_stats.experience as Experience from current_character_stats
join base_stats
on base_stats.level = current_character_stats.level
join class
on class.id = current_character_stats.class_id;

-- Find total amount of a certain item type in inventory, plus the value in gold of the entire stack.
select Concat(count(inventory_slots.item_id)," ", type,"(s)") as "Amount in Inventory", sum(gold_value) as "Total Value" from items
join inventory_slots
on inventory_slots.item_id = items.id
group by type;

-- ...Or the same thing for specific items.
select Concat(count(inventory_slots.item_id), " ", name,"(s)") as "Amount in Inventory", sum(gold_value) as "Total Value" from items
join inventory_slots
on inventory_slots.item_id = items.id
group by name;

-- One way of getting, organizing, and displaying the Player stats including inventory items and size.
select current_character_stats.level as "Level", health as HP, damage as Damage, experience as Experience,
count(inventory_slots.item_id) as "Items in Inventory", inventory.number_of_slots as "Total Inventory Size" from current_character_stats
join class
on current_character_stats.class_id = class.id
join inventory
on current_character_stats.inventory_id = inventory.id
join inventory_slots
on current_character_stats.inventory_id = inventory_slots.inventory_id
where class.name = "Player";

-- Display the item type as opposed to two columns of use_range and type.
select name as Name, amount as Amount, gold_value as Value,
case
when type = "Potion" then "Consumable"
when type = "Armor" then "Wearable"
when use_range > 3 then "Ranged"
else "Melee"
End as "Item Type",
description as Description from items;

-- Display the proper usage of the amount value, whether it's a weapon that deals damage or a potion that heals.
select name as Name, type as Type, description as Description,
case
when type = "Potion" then Concat("Recover ", amount, " points.")
when type = "Weapon" then Concat("Deal ", amount, " damage.")
else Concat("Deflect ", amount, " damage.")
end as Amount
from items
order by type;

-- Display info on character in scene over a specific level, say for tougher enemies.
select current_character_stats.level as Level, name as Class, current_character_stats.health as Health,
 current_character_stats.damage as Damage, current_character_stats.experience as Experience from current_character_stats
join base_stats
on base_stats.level = current_character_stats.level
join class
on class.id = current_character_stats.class_id
where current_character_stats.level > 1;

-- Order items in inventory by value in gold.
select items.id, name, gold_value from items
join inventory_slots
on items.id = inventory_slots.item_id
order by gold_value;
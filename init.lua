-- GENERATED CODE
-- Node Box Editor, version 0.9.0
-- Namespace: test
facedir = minetest.dir_to_facedir({x=0,y=0,z=1})
minetest.register_node("bubbles:admin_machine", {
    tiles = {
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png"
    },
    drawtype = "nodebox",
	paramtype = "light",
	description = "Super Fog machine",
	paramtype2 = "facedir",
	groups = {cracky=3},
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.25, 0.375, 0, 0.25}, -- NodeBox1
            {-0.4375, -0.25, -0.0625, 0.5, -0.125, 0.0625}, -- NodeBox3
        }},

    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		idb = minetest.add_particlespawner({
		amount = 6000,
		time = 120,
		minpos = {x=pos.x, y=pos.y, z=pos.z},
		maxpos = {x=pos.x, y=pos.y, z=pos.z},
		minvel = {x=0.2, y=0.2, z=0.2},
		maxvel = {x=0.4, y=0.8, z=0.4},
		minacc = {x=-1,y=0.1,1,z=-1},
		maxacc = {x=1,y=0.1,z=1},
		minexptime = 20,
		maxexptime = 30,
		minsize = 3,
		maxsize = 20,
		collisiondetection = true,
		vertical = false,
		texture = "bubble.png",

})
	end,
}
)
facedir = minetest.dir_to_facedir({x=0,y=0,z=1})


minetest.register_node("bubbles:snowmachine", {
	description = "Snow machine",
    tiles = {
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png"
    },
	drawtype = "nodebox",
	
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.25, 0.375, 0, 0.25}, -- NodeBox1
            {-0.4375, -0.25, -0.0625, 0.5, -0.125, 0.0625}, -- NodeBox3
        }},

    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
	idb = minetest.add_particlespawner({
		amount = 1500,
		time = 40,
		minpos = {x=pos.x-5, y=pos.y, z=pos.z-5},
		maxpos = {x=pos.x+5, y=pos.y, z=pos.z+5},
		minvel = {x=0.2, y=0, z=0.2},
		maxvel = {x=0.4, y=0, z=0.4},
		minacc = {x=-0.1,y=0,z=-0.1},
		maxacc = {x=1,y=0.1,z=1},
		minexptime = 40,
		maxexptime = 50,
		minsize = 10,
		maxsize = 20,
		collisiondetection = false,
		vertical = false,
		texture = "fog.png",

})
	end,
	
	on_punch = function(pos, node, player, pointed_thing)

		minetest.delete_particlespawner(idb)
		

	end,
})


minetest.register_node("bubbles:machine", {
    tiles = {
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png",
        "default_steel_block.png"
    },
	drawtype = "nodebox",
	description = "Fog machine",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {cracky=3},
    node_box = {
        type = "fixed",
        fixed = {
            {-0.5, -0.5, -0.25, 0.375, 0, 0.25}, -- NodeBox1
            {-0.4375, -0.25, -0.0625, 0.5, -0.125, 0.0625}, -- NodeBox3
        }},

    on_rightclick = function(pos, node, player, itemstack, pointed_thing)
		idb = minetest.add_particlespawner({
		amount = 75,
		time = 120,
		minpos = {x=pos.x, y=pos.y, z=pos.z},
		maxpos = {x=pos.x, y=pos.y, z=pos.z},
		minvel = {x=0.2, y=0.2, z=0.2},
		maxvel = {x=0.4, y=0.8, z=0.4},
		minacc = {x=-1,y=0.1,1,z=-1},
		maxacc = {x=1,y=0.1,z=1},
		minexptime = 20,
		maxexptime = 30,
		minsize = 3,
		maxsize = 20,
		collisiondetection = true,
		vertical = false,
		texture = "bubble.png",

})
	end,
	
	on_punch = function(pos, node, player, pointed_thing)

		minetest.delete_particlespawner(idb)
		

	end,
})
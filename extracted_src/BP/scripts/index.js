import { system, BlockPermutation, world, MolangVariableMap } from "@minecraft/server";
import { ActionFormData } from "@minecraft/server-ui";

const ui = new ActionFormData()
ui.title("Settings")
ui.body("")
ui.button("Impact frames (Fixes Crashes)")
ui.button("Block Destruction/Griefing")
ui.button("Toggle Custom Mob Event Spawning")
ui.button("Toggle Cooldowns")
ui.button("Toggle Menu Screen")
ui.button("Toggle Mission Cooldowns")
ui.button("Only allow one Sukuna Vessel")
ui.button("Mahito Instant Kill");
ui.button("EXP Multiplier");
ui.button("button10");

world.afterEvents.itemUse.subscribe(event => {
  const { source, itemStack } = event;

  if (itemStack.typeId === 'ds:settings') {
    ui.show(source).then(result => {
      if (result.selection === 0) source.runCommand('function setting_impactframes');
      if (result.selection === 1) source.runCommand('function setting_griefing');
      if (result.selection === 2) source.runCommand('function setting_mobevents');
      if (result.selection === 3) source.runCommand('function setting_nocds');
      if (result.selection === 4) source.runCommand('function setting_menu');
      if (result.selection === 5) source.runCommand('function setting_nomissioncds');
      if (result.selection === 6) source.runCommand('function setting_only_one_sukuna');
      if (result.selection === 7) source.runCommand('function setting_mahito_insta_kill');
      if (result.selection === 8) source.runCommand('function setting_exp');
      if (result.selection === 9) source.runCommand('function button10_setting');
    }).catch(error => {
      console.error("Error showing UI: ", error);
    });
  }
});


const processedThisTick = new Set();

world.beforeEvents.itemUse.subscribe(({ itemStack, source }) => {
  const itemId = `itemUse:${itemStack.typeId}`;
  if (!processedThisTick.has(itemId)) {
    system.run(() => {
      source.addTag(itemId);
    });
    system.runTimeout(() => {
      source.removeTag(itemId);
      processedThisTick.delete(itemId);
    }, 1);
    processedThisTick.add(itemId);
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  switch (event.id) {
    case "ds:dismantle":
      const playerView = player.getViewDirection();
      const spawnPosition = {
        x: player.location.x + playerView.x * 2,
        y: player.location.y + 1.5 + playerView.y * 2,
        z: player.location.z + playerView.z * 2
      };

      const projectileEntity = player.dimension.spawnEntity('ds:dismantle', spawnPosition);

      const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
      if (projectileComponent) {
        projectileComponent.owner = player;

        const velocityMultiplier = 4.5;
        projectileComponent.shoot({
          x: playerView.x * velocityMultiplier,
          y: playerView.y * velocityMultiplier,
          z: playerView.z * velocityMultiplier
        });
      }
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  switch (event.id) {
    case "ds:dismantle_small":
      const playerView = player.getViewDirection();
      const spawnPosition = {
        x: player.location.x + playerView.x * 2,
        y: player.location.y + 1.5 + playerView.y * 2,
        z: player.location.z + playerView.z * 2
      };

      const projectileEntity = player.dimension.spawnEntity('ds:dismantle_small', spawnPosition);

      const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
      if (projectileComponent) {
        projectileComponent.owner = player;

        const velocityMultiplier = 7;
        projectileComponent.shoot({
          x: playerView.x * velocityMultiplier,
          y: playerView.y * velocityMultiplier,
          z: playerView.z * velocityMultiplier
        });
      }
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  switch (event.id) {
    case "ds:dismantle_quick":
      const playerView = player.getViewDirection();
      const spawnPosition = {
        x: player.location.x + playerView.x * 2,
        y: player.location.y + 1.5 + playerView.y * 2,
        z: player.location.z + playerView.z * 2
      };

      const projectileEntity = player.dimension.spawnEntity('ds:dismantle_quick', spawnPosition);

      const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
      if (projectileComponent) {
        projectileComponent.owner = player;

        const velocityMultiplier = 5;
        projectileComponent.shoot({
          x: playerView.x * velocityMultiplier,
          y: playerView.y * velocityMultiplier,
          z: playerView.z * velocityMultiplier
        });
      }
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  switch (event.id) {
    case "ds:dismantle_quick2":
      const playerView = player.getViewDirection();
      const spawnPosition = {
        x: player.location.x + playerView.x * 2,
        y: player.location.y + 1.5 + playerView.y * 2,
        z: player.location.z + playerView.z * 2
      };

      const projectileEntity = player.dimension.spawnEntity('ds:dismantle_quick2', spawnPosition);

      const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
      if (projectileComponent) {
        projectileComponent.owner = player;

        const velocityMultiplier = 5;
        projectileComponent.shoot({
          x: playerView.x * velocityMultiplier,
          y: playerView.y * velocityMultiplier,
          z: playerView.z * velocityMultiplier
        });
      }
  }
});

var circleGen1ID = null;
var circleGen2ID = null;

system.afterEvents.scriptEventReceive.subscribe((event) => {
  const { id, message, sourceEntity } = event;

  const di = sourceEntity.getViewDirection();
  const args = message.split(" ");

  switch (id) {
    case "ds:knockback":
      sourceEntity.applyKnockback(di.x, di.z, parseFloat(args[0] || "0"), parseFloat(args[1] || "0"));
      break;
    case "ds:dashEast":
      sourceEntity.applyKnockback(di.z, -di.x, -9, 0);
      break;
    case "ds:dashWest":
      sourceEntity.applyKnockback(di.z, -di.x, 9, 0);
      break;
    case "ds:upslightly2":
      const upwardForce2 = 0.25;
      sourceEntity.applyKnockback(0, 0, 0, upwardForce2);
      break;
    case "ds:shockwave":
      const { x, y, z } = sourceEntity.location;
      const dimension = sourceEntity.dimension;
      const blockPerm = BlockPermutation.resolve('minecraft:air');
      const startingLocation = { dimension, x, y: y, z };

      circleGen1ID = system.runJob(circleGenerator(blockPerm, startingLocation, 64, 64));
      circleGen2ID = system.runJob(circleGenerator2(blockPerm, startingLocation, 64, 64));
      circleGen1ID = system.runJob(circleGenerator(blockPerm, startingLocation, 128, 128));
      circleGen2ID = system.runJob(circleGenerator2(blockPerm, startingLocation, 128, 128));
      break;
    case "ds:shockwave_stop":
      system.clearJob(circleGen1ID);
      system.clearJob(circleGen2ID);

      circleGen1ID = null;
      circleGen2ID = null;
      break;
    case "ds:antiair":
      const upwardForce = 0.04;
      sourceEntity.applyKnockback(0, 0, 0, upwardForce);
      break;
    case "ds:downfall":
      const anti_velo2 = sourceEntity.getVelocity();

      const initialBoost = 3;
      const fallSpeed = 1;

      if (anti_velo2.y < 0) {
        sourceEntity.applyKnockback(0, 0, 0, -initialBoost);
      } else {
        sourceEntity.applyKnockback(0, 0, 0, -fallSpeed);
      }
      break;

    case "ds:leapforwards":
      const dir1 = sourceEntity.getViewDirection();
      sourceEntity.applyKnockback(dir1.x, dir1.z, 7, 2);
      break;
    case "ds:leapforwards2":
      const dir2 = sourceEntity.getViewDirection();
      sourceEntity.applyKnockback(dir2.x, dir2.z, 3, 0.85);
      break;
    case "ds:leapforwards3":
      const dir3 = sourceEntity.getViewDirection();
      sourceEntity.applyKnockback(dir3.x, dir3.z, 3, 0.8);
      break;

    case "ds:autoJump2":
      const MAX_STEP_HEIGHT = 10;
      const MAX_SEARCH_FORWARD = 4.5;
      const MAX_SEARCH_DOWN = 5;

      let verticalVelocity = 0;

      const playerPos = sourceEntity.location;
      const view = sourceEntity.getViewDirection();

      const rayStartPos = { x: playerPos.x, y: playerPos.y + 0.5, z: playerPos.z };
      const forwardRay = { x: view.x, y: 0, z: view.z };

      try {
        const raycastResult = sourceEntity.dimension.getBlockFromRay(rayStartPos, forwardRay, { maxDistance: MAX_SEARCH_FORWARD });
        const downResult = sourceEntity.dimension.getTopmostBlock({ x: playerPos.x, z: playerPos.z }, playerPos.y);
        if (raycastResult && raycastResult.block) {
          const blockHeight = sourceEntity.dimension.getTopmostBlock({ x: raycastResult.block.x, z: raycastResult.block.z }, raycastResult.block.y + MAX_STEP_HEIGHT);
          const distance = blockHeight.y + 1.5 - playerPos.y;
          verticalVelocity = distance;
        } else if (downResult && Math.abs(downResult.y - playerPos.y) < MAX_SEARCH_DOWN) {
          const distance = downResult.y - playerPos.y;
          verticalVelocity = distance;
        }
      } catch (error) {
        console.error("Raycast failed:", error);
      }

      sourceEntity.applyKnockback(view.x, view.z, 6, verticalVelocity);
  }
});

// ─── v2.x Compatible Knockback Helper ────────────────────────────────────────
function applyOldKnockback(entity, dirX, dirZ, horizontalStrength, verticalStrength) {
    const mag = Math.sqrt(dirX * dirX + dirZ * dirZ);
    let normX = 0, normZ = 0;

    if (mag !== 0 && horizontalStrength !== 0) {
        normX = (dirX / mag) * horizontalStrength;
        normZ = (dirZ / mag) * horizontalStrength;
    }

    entity.applyKnockback(normX, normZ, horizontalStrength, verticalStrength);
}

function moveAngleDetect() {
  system.runInterval(() => {
    for (const player of world.getPlayers()) {
      const velocity = player.getVelocity();
      const di = player.getViewDirection();
      let moveAngle = Math.atan2(velocity.z, velocity.x) - Math.atan2(di.z, di.x);
      moveAngle = (moveAngle * (180 / Math.PI) + 360) % 360;
      moveAngle = Math.round(moveAngle)
      player.runCommand(`scoreboard players set @s moveAngle ${moveAngle}`);
    }
  });
}
moveAngleDetect();

function* circleGenerator(blockPerm, startingLocation, maxRadius, height) {
  const { dimension, x: centerX, y: startY, z: centerZ } = startingLocation;

  for (let steps = 0; steps < 60; steps++) {
    const currentRadius = Math.min(maxRadius, 45 * (steps + 1));

    for (let dx = -currentRadius; dx <= currentRadius; dx++) {
      for (let dz = -currentRadius; dz <= currentRadius; dz++) {
        const distanceSquared = dx * dx + dz * dz;
        const currentRadiusSquared = currentRadius * currentRadius;

        for (let y = startY; y < startY + height; y++) {
          if (distanceSquared <= currentRadiusSquared) {
            const block = dimension.getBlock({ x: centerX + dx, y: y + steps, z: centerZ + dz });
            if (block) {
              block.setPermutation(blockPerm);
            }
            yield;
          }
        }
      }
    }
  }
}

function* circleGenerator2(blockPerm, startingLocation, maxRadius, height) {
  const { dimension, x: centerX, y: startY, z: centerZ } = startingLocation;
  for (let y = startY; y < startY + height; y++) {
    const currentRadius = Math.min(maxRadius, 45 * (y - startY + 1));
    const currentRadiusSquared = currentRadius * currentRadius;

    for (let dx = -currentRadius; dx <= currentRadius; dx++) {
      for (let dz = -currentRadius; dz <= currentRadius; dz++) {
        const distanceSquared = dx * dx + dz * dz;
        if (distanceSquared <= currentRadiusSquared) {
          const block = dimension.getBlock({ x: centerX + dx, y, z: centerZ + dz });
          if (block) {
            block.setPermutation(blockPerm);
          }
          yield;
        }
      }
    }
  }
}

/**
 * Gets a players score.
 * @param {string} objective Scoreboard objective.
 * @param {Player} target The player object.
 * @returns {number} The score for the player.
 */
export function getScore(objective, target) {
  try {
      const oB = world.scoreboard.getObjective(objective);
      return oB.getScore(target.scoreboardIdentity);
  } catch (error) {
      return 0;
  }
};

let currentTick = 0;
system.run(function runnable() {
    system.run(runnable);

    currentTick++;
    if (currentTick > 180) currentTick = 0;

    for (const player of world.getPlayers()) {
        if (player.hasTag("abilitying") || !player.hasTag("sukuna") || getScore('finger', player) < 15) continue;

        const fuga = Math.min(500, Math.max(getScore("fuga", player), 0));

        if (fuga < 500) {
            const fugaNorm = Math.round((fuga / 500) * 29);
            player.onScreenDisplay.setTitle(`a:fuga_bar${fugaNorm}`);
        } else {
            const fugaNorm = Math.round(30 + Math.cos(currentTick / 3) * 1);
            player.onScreenDisplay.setTitle(`a:fuga_bar${fugaNorm}`);
        }
    }
});

/**
 * Calculates the magnitude of a Vector3.
 * @param {Vector3} vector - The Vector3 input.
 * @returns {number} The magnitude of the vector.
 */
export function magnitude(vector) {
  return Math.sqrt(vector.x * vector.x + vector.y * vector.y + vector.z * vector.z);
};

/**
 * Calculates the distance between two positions.
 * @param {Vector3} posA
 * @param {Vector3} posB
 * @returns {number} The distance between the two positions.
 */
export function calculateDistance(posA, posB) {
  let direction = {
      x: posA.x - posB.x,
      y: posA.y - posB.y,
      z: posA.z - posB.z
  };
  return magnitude(direction);
}

/**
 * Normalizes the given vector and scales it by the factor `s`.
 * @param {Vector3} vector - The 3D vector to normalize.
 * @param {number} s - The scale factor.
 * @returns {Vector3} The normalized and scaled vector.
 */
function normalizeVector(vector, s) {
  let l = Math.hypot(vector.x, vector.y, vector.z)
  return {
      x: s * (vector.x / l),
      y: s * (vector.y / l),
      z: s * (vector.z / l)
  }
}

/**
 * Finds a location based on view direction and scaling factors from the player's position.
 * @param {object} player
 * @param {number} xf
 * @param {number} yf
 * @param {number} zf
 * @returns {{x: number, y: number, z: number}}
 */
function calcVectorOffset(player, xf, yf, zf, d = player.getViewDirection(), l = player.location) {
  let m = Math.hypot(d.x, d.z);
  let xx = normalizeVector({ x: d.z, y: 0, z: -d.x }, xf);
  let yy = normalizeVector({ x: (d.x / m) * -d.y, y: m, z: (d.z / m) * -d.y }, yf);
  let zz = normalizeVector(d, zf);

  return {
      x: l.x + xx.x + yy.x + zz.x,
      y: l.y + xx.y + yy.y + zz.y,
      z: l.z + xx.z + yy.z + zz.z
  };
}

const customMap = new MolangVariableMap();
const traceLine = (player, pStart, pEnd, color1, color2, color3, widthMultiplier1, widthMultiplier2, widthMultiplier3) => {
    try {
        const point1 = pStart;
        const point2 = pEnd;
        const distance = calculateDistance(point1, point2);
        const vectorDir = { x: point1.x - point2.x, y: point1.y - point2.y, z: point1.z - point2.z };

        const midPoint = { x: (point1.x + point2.x) / 2, y: (point1.y + point2.y) / 2, z: (point1.z + point2.z) / 2 };

        customMap.setVector3("variable.plane", color1);
        customMap.setVector3("variable.direction", vectorDir);
        customMap.setFloat("variable.width", 0.04 * widthMultiplier1);
        customMap.setFloat("variable.length", distance / 2);
        player.dimension.spawnParticle("a:lightning_line", midPoint, customMap);

        customMap.setVector3("variable.plane", color2);
        customMap.setFloat("variable.width", 0.04 * widthMultiplier2);
        player.dimension.spawnParticle("a:lightning_line", midPoint, customMap);

        customMap.setVector3("variable.plane", color3);
        customMap.setFloat("variable.width", 0.03 * widthMultiplier3);
        player.dimension.spawnParticle("a:lightning_line_black", midPoint, customMap);
    } catch (error) {
        console.warn(error);
    };
}

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:lightning") return;

  const player = event.sourceEntity;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  let currentTick = 0;
  const sched_ID = system.runInterval(function tick() {
      currentTick++;
      if (currentTick > 4) {
          return system.clearRun(sched_ID);
      }

      for (let i = 0; i < 1; i++) {
          const numLocations = 6;
          const locations = [];

          for (let i = 0; i < numLocations; i++) {
              const xOffset = i === numLocations - 1 ? 0 : i === 0 ? 0 : Math.random() * 6 - 3;
              const yOffset = i === numLocations - 1 ? 0 : i === 0 ? 0.6 : Math.random() * 6 - 2;
              const zOffset = i === numLocations - 1 ? 8 : 2 * i + Math.random() * 2;
              const location = calcVectorOffset(player, xOffset * offsets[0], yOffset * offsets[1] + 1, zOffset * offsets[2]);

              const scaleFactor = 5 / Math.max(0.25, 0.5 * calculateDistance(player.location, location));

              locations.push(location);

              if (i > 0) {
                  traceLine(
                      player,
                      locations[i - 1],
                      locations[i],
                      { x: offsets[3], y: offsets[4], z: offsets[5] },
                      { x: offsets[6], y: offsets[7], z: offsets[8] },
                      { x: offsets[9], y: offsets[10], z: offsets[11] },
                      offsets[12] * scaleFactor,
                      offsets[13] * scaleFactor,
                      offsets[14] * scaleFactor
                  );
              }
          }
      }
  }, 1);
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  switch (event.id) {
    case "ds:wcs":
      const playerView = player.getViewDirection();
      const spawnPosition = {
        x: player.location.x + playerView.x * 2,
        y: player.location.y + 1.5 + playerView.y * 2,
        z: player.location.z + playerView.z * 2
      };

      const projectileEntity = player.dimension.spawnEntity('ds:wcs', spawnPosition);

      const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
      if (projectileComponent) {
        projectileComponent.owner = player;

        const velocityMultiplier = 13;
        projectileComponent.shoot({
          x: playerView.x * velocityMultiplier,
          y: playerView.y * velocityMultiplier,
          z: playerView.z * velocityMultiplier
        });
      }
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  switch (event.id) {
    case "ds:wcs2":
      const playerView = player.getViewDirection();
      const spawnPosition = {
        x: player.location.x + playerView.x * 2,
        y: player.location.y + 1.5 + playerView.y * 2,
        z: player.location.z + playerView.z * 2
      };

      const projectileEntity = player.dimension.spawnEntity('ds:wcs2', spawnPosition);

      const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
      if (projectileComponent) {
        projectileComponent.owner = player;

        const velocityMultiplier = 7.5;
        projectileComponent.shoot({
          x: playerView.x * velocityMultiplier,
          y: playerView.y * velocityMultiplier,
          z: playerView.z * velocityMultiplier
        });
      }
  }
});


// Define the UI for Special Missions
const specialMissionsUI = new ActionFormData()
  .title("Special Missions")
  .body("Select the mission you want to do.")
  .button("§eStar Plasma Vessel Escort\n§0Difficulty: §gGrade 2+", "textures/ui/mark") // Add icon texture path
  .button("Coming Soon", "textures/ui/mark") // Add icon texture path
  .button("Coming Soon", "textures/ui/mark") // Add icon texture path
  .button("Coming Soon", "textures/ui/mark") // Add icon texture path
  .button("Coming Soon", "textures/ui/mark") // Add icon texture path
  .button("Coming Soon", "textures/ui/mark") // Add icon texture path
  .button("Coming Soon", "textures/ui/mark") // Add icon texture path
  .button("Coming Soon", "textures/ui/mark") // Add icon texture path
  .button("Coming Soon", "textures/ui/mark") // Add icon texture path
  .button("Coming Soon", "textures/ui/mark"); // Add icon texture path

// Subscribe to script events for Special Missions
system.afterEvents.scriptEventReceive.subscribe((event) => {
  const { id, sourceEntity } = event;

  // Check if the script event ID matches
  if (id === "ds:special_missions") {
    // Show the Special Missions UI to the player
    specialMissionsUI.show(sourceEntity).then((result) => {
      // Handle button selections
      switch (result.selection) {
        case 0:
          sourceEntity.runCommand("function special_mission_vessel");
          break;
        case 1:
          sourceEntity.runCommand("function special_mission");
          break;
        case 2:
          sourceEntity.runCommand("function special_mission");
          break;
        case 3:
          sourceEntity.runCommand("function special_mission");
          break;
        case 4:
          sourceEntity.runCommand("function special_mission");
          break;
        case 5:
          sourceEntity.runCommand("function special_mission");
          break;
        case 6:
          sourceEntity.runCommand("function special_mission");
          break;
        case 7:
          sourceEntity.runCommand("function special_mission");
          break;
        case 8:
          sourceEntity.runCommand("function special_mission");
          break;
        case 9:
          sourceEntity.runCommand("function special_mission");
          break;
        default:
          console.warn("Unknown selection:", result.selection);
      }
    }).catch((error) => {
      console.error("Error showing Special Missions UI: ", error);
    });
  }
});

// Define the UI for Special Missions
const boogiewoogieUI = new ActionFormData()
  .title("What kind of women is your type?")
  .body("Answer the Question.")
  .button("§2Unshakable Character")
  .button("§2Big Bahonkas") 
  .button("§2Tall with a Big A**") 
  .button("§2Nothing") 
  .button("§2Goth Baddies") 
  .button("§2Short and Flat") 
  .button("§2Men.")
  .button("§2Your mother");


// Subscribe to script events for Special Missions
system.afterEvents.scriptEventReceive.subscribe((event) => {
  const { id, sourceEntity } = event;

  // Check if the script event ID matches
  if (id === "ds:what_is_your_type") {
    // Show the Special Missions UI to the player
    boogiewoogieUI.show(sourceEntity).then((result) => {
      // Handle button selections
      switch (result.selection) {
        case 0:
          sourceEntity.runCommand("function boogie_woogie/women_type1");
          break;
        case 1:
          sourceEntity.runCommand("function boogie_woogie/women_type2");
          break;
        case 2:
          sourceEntity.runCommand("function boogie_woogie/women_type3");
          break;
        case 3:
          sourceEntity.runCommand("function boogie_woogie/women_type4");
          break;
        case 4:
          sourceEntity.runCommand("function boogie_woogie/women_type5");
          break;
        case 5:
          sourceEntity.runCommand("function boogie_woogie/women_type6");
          break;
        case 6:
          sourceEntity.runCommand("function boogie_woogie/women_type7");
           break;
         case 7:
          sourceEntity.runCommand("function boogie_woogie/women_type8");
          break;
        default:
          console.warn("Unknown selection:", result.selection);
      }
    }).catch((error) => {
      console.error("Error showing Boogie Woogie UI: ", error);
    });
  }
});




system.afterEvents.scriptEventReceive.subscribe((event) => {
    if (event.id !== "ds:fly") return;

    const sourceEntity = event.sourceEntity;
    if (!sourceEntity || sourceEntity.typeId !== "minecraft:player") return;

    // Get the direction the player is looking
    const viewDirection = sourceEntity.getViewDirection();

    // Normalize the direction vector
    const magnitude = Math.sqrt(viewDirection.x ** 2 + viewDirection.y ** 2 + viewDirection.z ** 2);
    if (magnitude === 0) return; // Prevent division by zero

    const direction = {
        x: viewDirection.x / magnitude,
        y: viewDirection.y / magnitude,
        z: viewDirection.z / magnitude
    };

    // Strength multipliers (adjust for faster/slower movement)
    const forwardStrength = 3; // Forward movement speed
    const verticalStrength = Math.abs(direction.y) * 3; // Vertical speed scales with look angle

    // Reduce forward movement the higher you're looking
    const forwardFactor = 1 - Math.abs(direction.y); // 1 when looking straight, 0 when looking fully up/down

    // Apply knockback with balanced forward & vertical movement
    sourceEntity.applyKnockback(direction.x * forwardFactor, direction.z * forwardFactor, forwardStrength, direction.y * verticalStrength);
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:leapup") return;

  const sourceEntity = event.sourceEntity;
  if (!sourceEntity || sourceEntity.typeId !== "minecraft:player") return;

  sourceEntity.applyKnockback(0, 0, 0, 4);
});

// runs every tick | will only play animation for players who do not have the "delusional" tag

system.runInterval(() => {
  const dimensions = ["overworld", "nether", "the_end"];
  for (const dimension of dimensions) {
      const dim = world.getDimension(dimension);
      
      const notToShow = world.getPlayers({ excludeTags: ["delusional"] }).map(p => p.name);
      const delusionalPlayers = world.getPlayers({ tags: ["delusional"] }).map(p => p.name);

      // Get all entities with self_blind2 tag (both players and other entities)
      const selfBlind2Entities = dim.getEntities({ tags: ["self_blind2"] });
      
      const takadas = dim.getEntities({ type: "ds:takada_chan" });
      const backgrounds = dim.getEntities({ type: "ds:takada_background" });
      const entities = [...takadas, ...backgrounds];
      
      // Hide regular entities from non-delusional players
      for (const entity of entities) {
          entity.playAnimation("animation.black.variable.delusional_cantsee", { players: notToShow });
      }

      // Hide self_blind2 entities from delusional players
      for (const entity of selfBlind2Entities) {
          entity.playAnimation("animation.black.variable.delusional_cantsee2", { players: delusionalPlayers });
      }

      // Original self_blind functionality (player can't see themselves)
      const hiddenPlayers = world.getPlayers({ tags: ["self_blind"] });
      for (const player of hiddenPlayers) {
          player.playAnimation("animation.black.variable.delusional_cantsee2", { players: [player.name] });
      }
  }
});


system.runInterval(() => {
  const dimensions = ["overworld", "nether", "the_end"];
  
  for (const dimension of dimensions) {
    const dim = world.getDimension(dimension);

    // Get players with and without the cutscene_vision tag
    const cutscenePlayers = world.getPlayers({ tags: ["cutscene_vision"] }).map(p => p.name);
    const nonCutscenePlayers = world.getPlayers({ excludeTags: ["cutscene_vision"] }).map(p => p.name);

    // Get all full_background entities
    const backgrounds = dim.getEntities({ type: "ds:full_background" });

    for (const entity of backgrounds) {
      // Show to cutscene_vision players
      entity.playAnimation("animation.black.variable.delusional_cansee", { players: cutscenePlayers });

      // Hide from everyone else
      entity.playAnimation("animation.black.variable.delusional_cantsee", { players: nonCutscenePlayers });
    }
  }
});



system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:lightning") return;

  const player = event.sourceEntity;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  let currentTick = 0;
  const sched_ID = system.runInterval(function tick() {
      // In case of errors
      currentTick++;
      if (currentTick > 4) {
          return system.clearRun(sched_ID);
      }
  
      for (let i = 0; i < 1; i++) {
          const numLocations = 6;
          const locations = [];
          
          for (let i = 0; i < numLocations; i++) {
              const xOffset = i === numLocations - 1 ? 0 : i === 0 ? 0 : Math.random() * 6 - 3;
              const yOffset = i === numLocations - 1 ? 0 : i === 0 ? 0.6 : Math.random() * 6 - 2;
              const zOffset = i === numLocations - 1 ? 8 : 2 * i + Math.random() * 2;
              const location = calcVectorOffset(player, xOffset * offsets[0], yOffset * offsets[1] + 1, zOffset * offsets[2]);

              const scaleFactor = 5/Math.max(0.25, 0.5 * calculateDistance(player.location, location));
          
              locations.push(location);
          
              if (i > 0) {
                  traceLine(
                      player,
                      locations[i - 1],
                      locations[i],
                      { x: offsets[3], y: offsets[4], z: offsets[5] },
                      { x: offsets[6], y: offsets[7], z: offsets[8] },
                      { x: offsets[9], y: offsets[10], z: offsets[11] },
                      offsets[12] * scaleFactor,
                      offsets[13] * scaleFactor,
                      offsets[14] * scaleFactor
                  );
              }
          }
      }
  }, 1);
});


system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:delusional_hit") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["delusional"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:delusional_hit1", offset);
      player.spawnParticle("ds:delusional_hit2", offset);
      player.spawnParticle("ds:delusional_hit3", offset);
      player.spawnParticle("ds:delusional_hit4", offset);
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:delusional") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  // Get player groups
  const delusionalPlayers = world.getPlayers({ tags: ["delusional"] });
  const normalPlayers = world.getPlayers({ excludeTags: ["delusional"] });

  // Original effects for delusional players
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      player.spawnParticle("ds:delusional1", offset);
      player.spawnParticle("ds:delusional2", offset);
      player.spawnParticle("ds:delusional3", offset);
      player.spawnParticle("ds:delusional4", offset);
  }

  // Proper rotating blood effect for normal players
  for (const player of normalPlayers) {
      // Base eye position
      const eyeHeight = player.isSneaking ? 1.27 : 1.52;
      const eyePos = {
          x: player.location.x,
          y: player.location.y + eyeHeight,
          z: player.location.z
      };

      // Get view direction
      const rotation = player.getRotation();
      const yaw = rotation.y * (Math.PI / 180);
      const pitch = rotation.x * (Math.PI / 180);

      // Calculate forward vector (normalized)
      const forwardX = -Math.sin(yaw) * Math.cos(pitch);
      const forwardY = -Math.sin(pitch);
      const forwardZ = Math.cos(yaw) * Math.cos(pitch);

      // Apply fixed offset (0.25 forward, 0.15 down from eyes)
      const bloodPos = {
          x: eyePos.x + forwardX * 0.25,
          y: eyePos.y + forwardY * 0.25 - 0.15,
          z: eyePos.z + forwardZ * 0.25
      };

      player.spawnParticle("ds:delusional_blood", bloodPos);
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:delusional_small") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["delusional"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:delusional_small1", offset);
      player.spawnParticle("ds:delusional_small2", offset);
      player.spawnParticle("ds:delusional_small3", offset);
      player.spawnParticle("ds:delusional_small4", offset);
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:delusional_climax") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["delusional"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:delusional_climax1", offset);
      player.spawnParticle("ds:delusional_climax2", offset);
      player.spawnParticle("ds:delusional_climax3", offset);
      player.spawnParticle("ds:delusional_climax4", offset);
      player.spawnParticle("ds:delusional_climax5", offset);
      player.spawnParticle("ds:delusional_climax6", offset);
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:delusional_hearts") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["delusional"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:delusional_hearts", offset);

  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:delusional_hearts2") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["delusional"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:delusional_hearts2", offset);

  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:delusional_glitter") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["delusional"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:delusional_glitter", offset);

  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:delusional_end") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["delusional"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:delusional_end1", offset);
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:styleswap") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["styleswap_tag"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:styleswap", offset);
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:plusultra_brother_background1") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["cutscene_vision"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:plusultra_brother_background1", offset);
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  if (event.id !== "ds:mahito_blackflash_background1") return;

  const message = event.message;
  const offsets = message.split(",").map(Number);

  const delusionalPlayers = world.getPlayers({ tags: ["cutscene_vision"] });
  for (const player of delusionalPlayers) {
      const offset = calcVectorOffset(player, offsets[0], offsets[1], offsets[2]);
      
      player.spawnParticle("ds:mahito_blackflash_background1", offset);
  }
});



system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  const di = player.getViewDirection();
  switch (event.id) {
    case "ds:pebble":
      const playerView = player.getViewDirection();
      const spawnPosition = {
        x: player.location.x + playerView.x * 2,
        y: player.location.y + 1.5 + playerView.y * 2,
        z: player.location.z + playerView.z * 2
      };

      const projectileEntity = player.dimension.spawnEntity('ds:pebble', spawnPosition);

      const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
      if (projectileComponent) {
        projectileComponent.owner = player;

        const velocityMultiplier = 2.5;
        projectileComponent.shoot({
          x: playerView.x * velocityMultiplier,
          y: playerView.y * velocityMultiplier,
          z: playerView.z * velocityMultiplier
        });
      }
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  const di = player.getViewDirection();
  switch (event.id) {
    case "ds:transfigured_bullet":
      const playerView = player.getViewDirection();
      const spawnPosition = {
        x: player.location.x + playerView.x * 2,
        y: player.location.y + 1.5 + playerView.y * 2,
        z: player.location.z + playerView.z * 2
      };

      const projectileEntity = player.dimension.spawnEntity('ds:transfigured_human_bullet', spawnPosition);

      const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
      if (projectileComponent) {
        projectileComponent.owner = player;

        const velocityMultiplier = 3;
        projectileComponent.shoot({
          x: playerView.x * velocityMultiplier,
          y: playerView.y * velocityMultiplier,
          z: playerView.z * velocityMultiplier
        });
      }
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  const di = player.getViewDirection();
  switch (event.id) {
    case "ds:transfigured_worm1":
      const playerView = player.getViewDirection();
      const spawnPosition = {
        x: player.location.x + playerView.x * 2,
        y: player.location.y + 1.5 + playerView.y * 2,
        z: player.location.z + playerView.z * 2
      };

      const projectileEntity = player.dimension.spawnEntity('ds:transfigured_human_worm', spawnPosition);

      const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
      if (projectileComponent) {
        projectileComponent.owner = player;

        const velocityMultiplier = 2;
        projectileComponent.shoot({
          x: playerView.x * velocityMultiplier,
          y: playerView.y * velocityMultiplier,
          z: playerView.z * velocityMultiplier
        });
      }
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  const di = player.getViewDirection();

  switch (event.id) {
    case "ds:transfigured_worm2":
      const playerView = player.getViewDirection();

      // Helper to spawn and shoot the projectile
      function spawnProjectile(direction) {
        const spawnPosition = {
          x: player.location.x + direction.x * 2,
          y: player.location.y + 1.5 + direction.y * 2,
          z: player.location.z + direction.z * 2
        };

        const projectileEntity = player.dimension.spawnEntity('ds:transfigured_human_worm', spawnPosition);

        const projectileComponent = projectileEntity.getComponent('minecraft:projectile');
        if (projectileComponent) {
          projectileComponent.owner = player;
          const velocityMultiplier = 2;
          projectileComponent.shoot({
            x: direction.x * velocityMultiplier,
            y: direction.y * velocityMultiplier,
            z: direction.z * velocityMultiplier
          });
        }
      }

      // Function to normalize a vector
      function normalize(v) {
        const len = Math.sqrt(v.x * v.x + v.y * v.y + v.z * v.z);
        return { x: v.x / len, y: v.y / len, z: v.z / len };
      }

      // Function to compute cross product
      function cross(a, b) {
        return {
          x: a.y * b.z - a.z * b.y,
          y: a.z * b.x - a.x * b.z,
          z: a.x * b.y - a.y * b.x
        };
      }

      // Get perpendicular vector to player's view (horizontal)
      const up = { x: 0, y: 1, z: 0 };
      let right = cross(playerView, up);
      right = normalize(right);

      const spread = 0.2; // Adjust for wider/narrower spread

      // Middle shot
      spawnProjectile(playerView);

      // Left shot (view + slight left offset)
      spawnProjectile(normalize({
        x: playerView.x - right.x * spread,
        y: playerView.y,
        z: playerView.z - right.z * spread
      }));

      // Right shot (view + slight right offset)
      spawnProjectile(normalize({
        x: playerView.x + right.x * spread,
        y: playerView.y,
        z: playerView.z + right.z * spread
      }));
  }
});


system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;
  const di = player.getViewDirection();

  switch (event.id) {
    case "ds:body_repel_max":
      // Entities to shoot out
      const entities = ["ds:body_repel_max1", "ds:body_repel_max2", "ds:transfigured_human_worm"];

      for (const entityId of entities) {
        // Spawn a little in front of the player
        const spawnPosition = {
          x: player.location.x + di.x * 2,
          y: player.location.y + 1.5,
          z: player.location.z + di.z * 2
        };

        const projectileEntity = player.dimension.spawnEntity(entityId, spawnPosition);

        const projectileComponent = projectileEntity.getComponent("minecraft:projectile");
        if (projectileComponent) {
          projectileComponent.owner = player;

          // Base velocity in the direction the player is looking
          const baseVel = {
            x: di.x,
            y: di.y,
            z: di.z
          };

          // Add random spray offset
          const spread = 0.5; // increase for wider spray
          const randomVel = {
            x: baseVel.x + (Math.random() - 0.5) * spread,
            y: baseVel.y + (Math.random() - 0.5) * spread,
            z: baseVel.z + (Math.random() - 0.5) * spread
          };

          // Normalize + scale speed
          const velocityMultiplier = 2.5;
          const mag = Math.sqrt(randomVel.x ** 2 + randomVel.y ** 2 + randomVel.z ** 2);
          const finalVel = {
            x: (randomVel.x / mag) * velocityMultiplier,
            y: (randomVel.y / mag) * velocityMultiplier,
            z: (randomVel.z / mag) * velocityMultiplier
          };

          projectileComponent.shoot(finalVel);
        }
      }
      break;
  }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
  var player = event.sourceEntity;

  switch (event.id) {
    case "ds:body_repel_fountain":
      // Entities to shoot out
      const entities = ["ds:body_repel_max1", "ds:transfigured_human_worm"];

      for (const entityId of entities) {
        // Spawn at player's position + offset
        const spawnPosition = {
          x: player.location.x,
          y: player.location.y + 1,
          z: player.location.z
        };

        const projectileEntity = player.dimension.spawnEntity(entityId, spawnPosition);

        const projectileComponent = projectileEntity.getComponent("minecraft:projectile");
        if (projectileComponent) {
          projectileComponent.owner = player;

          // Random horizontal spread
          const spread = 1.0; // increase for wider spray
          const randX = (Math.random() - 0.5) * spread;
          const randZ = (Math.random() - 0.5) * spread;

          // Always strong upward force
          const upwardVelocity = Math.random() * 1 + 2; // between 3 and 5

          // Final velocity vector
          const finalVel = {
            x: randX,
            y: upwardVelocity,
            z: randZ
          };

          projectileComponent.shoot(finalVel);
        }
      }
      break;
  }
});





/**
 * Finds all entities within a given radius of any point along a ray cast from a player’s view direction.
 * @param {Entity} player - The player entity casting the ray.
 * @param {Vector3} viewDirection - The normalized vector representing the player's view direction.
 * @param {number} proximityRadius - Radius around the ray within which entities are considered "near."
 * @param {number} rayLength - Total length of the ray.
 * @param {number} [step=1] - Step size for sampling along the ray (smaller = more precise, larger = faster).
 * @returns {Entity[]} Array of unique entities near the ray.
 */
const findEntitiesNearRay = (player, viewDirection, proximityRadius, rayLength, step = 1) => {
    const nearbyEntities = [];

    // Calculate the center point of the ray to optimize the entity query
    const halfRay = rayLength / 2;
    const rayMidpoint = calcVectorOffset(player, 0, 0, halfRay, viewDirection);

    // Single query for all entities in the max range
    const potentialTargets = player.dimension.getEntities({
        location: rayMidpoint,
        maxDistance: halfRay + proximityRadius,
        excludeNames: [player.name]
    });

    // Sample points along the ray to check against
    const sampledRayPoints = [];
    for (let i = 0; i <= rayLength; i += step) {
        sampledRayPoints.push(calcVectorOffset(player, 0, 0, i, viewDirection));
    }

    // Check if any candidate entity is near any ray point
    for (const entity of potentialTargets) {
        const { x: ex, y: ey, z: ez } = entity.location;

        for (const point of sampledRayPoints) {
            const dx = ex - point.x;
            const dy = ey - point.y;
            const dz = ez - point.z;
            const distanceSq = dx * dx + dy * dy + dz * dz;

            if (distanceSq <= proximityRadius * proximityRadius) {
                if (!nearbyEntities.find(e => e.id === entity.id)) {
                    nearbyEntities.push(entity);
                }
                break;
            }
        }
    }

    return nearbyEntities;
};

export const rayCast = (player, args) => {
    const viewDir = player.getViewDirection();

    const maxDistance = parseFloat(args[0]);
    const rayThickness = parseFloat(args[1]);
    const functionAtDest = args[2];

    const entities = findEntitiesNearRay(player, viewDir, rayThickness, maxDistance);

    if (entities.length > 0) {
        const { x, y, z } = entities[0].location;
        return player.runCommand(`execute positioned ${x} ${y} ${z} run function ${functionAtDest}`);
    }

    const rayCast = player.dimension.getBlockFromRay(player.getHeadLocation(), viewDir, {
        includePassableBlocks: false,
        includeLiquidBlocks: false,
        maxDistance: maxDistance
    });
    
    if (rayCast) {
        const movedBack = calcVectorOffset(player, 0, 1, -0.8, viewDir, rayCast.block);
        const { x, y, z } = movedBack;

        return player.runCommand(`execute positioned ${x + 0.5} ${y + 0.5} ${z + 0.5} run function ${functionAtDest}`);
    }
}


const PREFIX = "ds:";

const scriptEvent = (eventData) => {
    const { id, message, sourceEntity, sourceType } = eventData;
    const player = sourceEntity;

    if (!player || !player.isValid()) return;

    const args = message.split(" ");

    switch (id.replace(PREFIX, "")) {
        case "raycast":
            rayCast(player, args);
        default:
            break;
    }
};
system.afterEvents.scriptEventReceive.subscribe(v => scriptEvent(v));

system.afterEvents.scriptEventReceive.subscribe((event) => {
    const player = event.sourceEntity;
    if (!player || player.typeId !== "minecraft:player") return;

    if (event.id === "ds:human_count") {
        let total = 0;

        // Get player's inventory container
        const inventoryComp = player.getComponent("minecraft:inventory");
        if (inventoryComp) {
            const container = inventoryComp.container;
            for (let i = 0; i < container.size; i++) {
                const item = container.getItem(i);
                if (!item) continue;

                if (item.typeId === "ds:unstable_transfigured_human" || item.typeId === "ds:stable_transfigured_human") {
                    total += item.amount;
                }
            }
        }

        // Ensure scoreboard exists
        try {
            player.runCommand(`scoreboard objectives add transfigured_human_count dummy`);
        } catch (e) {
            // ignore if already exists
        }

        // Set the score to the total count
        player.runCommand(`scoreboard players set @s transfigured_human_count ${total}`);
    }
});

system.afterEvents.scriptEventReceive.subscribe((event) => {
    const player = event.sourceEntity;
    if (!player || player.typeId !== "minecraft:player") return;

    const args = event.message?.split(" ") || [];
    const amountToRemove = parseInt(args[0]);
    if (event.id !== "ds:remove_humans" || isNaN(amountToRemove) || amountToRemove <= 0) return;

    const inventoryComp = player.getComponent("minecraft:inventory");
    if (!inventoryComp) return;

    const container = inventoryComp.container;
    let remainingToRemove = amountToRemove;

    // Loop through inventory slots in order (hotbar first)
    for (let i = 0; i < container.size; i++) {
        const item = container.getItem(i);
        if (!item) continue;

        if (item.typeId === "ds:unstable_transfigured_human" || item.typeId === "ds:stable_transfigured_human") {
            if (item.amount <= remainingToRemove) {
                // Remove the whole stack
                container.setItem(i, undefined);
                remainingToRemove -= item.amount;
            } else {
                // Remove part of the stack
                item.amount -= remainingToRemove;
                container.setItem(i, item);
                remainingToRemove = 0;
            }
        }

        if (remainingToRemove <= 0) break;
    }
});


// Listen for script events
system.afterEvents.scriptEventReceive.subscribe((event) => {
    // Check if this is our custom event
    if (event.id === "ds:boostup") {
        const entity = event.sourceEntity;
        
        // Make sure an entity triggered the event
        if (!entity) {
            return;
        }
        
        // Get velocity from the message, default to 1 if not specified
        let velocity = parseFloat(event.message) || 1;
        
        // Apply upward velocity using applyOldKnockback
        // applyOldKnockback(entity, directionX, directionZ, horizontalStrength, verticalStrength)
        // We use 0,0 for horizontal direction and the velocity parameter for vertical
        applyOldKnockback(entity, 0, 0, 0, velocity);
    }
});
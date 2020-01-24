return { energypylon = {
  unitname                      = [[energypylon]],
  name                          = [[Energy Pylon]],
  description                   = [[Extends overdrive grid]],
  activateWhenBuilt             = true,
  buildCostMetal                = 1500,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 5,
  buildingGroundDecalSizeY      = 5,
  buildingGroundDecalType       = [[energypylon_aoplane.dds]],
  buildPic                      = [[energypylon.png]],
  category                      = [[SINK UNARMED]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[48 48 48]],
  collisionVolumeType           = [[ellipsoid]],
  corpse                        = [[DEAD]],

  customParams                  = {
    pylonrange = 2500,
    aimposoffset   = [[0 0 0]],
    midposoffset   = [[0 -6 0]],
    modelradius    = [[72]],
    removewait     = 1,
    default_spacing = 41, -- Diagonal connection.
    selectionscalemult = 1.15,
  },
  weapons = {
    {
      def                = [[GRAVITY_NEG]],
      onlyTargetCategory = [[NONE]],
    },
  },

  weaponDefs = {
    GRAVITY_NEG = {
      name                    = [[Attractive Gravity (fake)]],
      alwaysVisible           = 1,
      avoidFriendly           = false,
      canAttackGround         = false,
      coreThickness           = 1.5,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        light_radius = 0,
      },

      damage                  = {
        default = 0.001,
        planes  = 0.001,
        subs    = 5E-05,
      },

      duration                = 2,
      explosionGenerator      = [[custom:NONE]],
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      intensity               = 0.7,
      interceptedByShieldType = 1,
      noSelfDamage            = true,
      range                   = 20000,
      reloadtime              = 0.2,
      rgbColor                = [[0 0 1]],
      rgbColor2               = [[0.4 0 0.9]],
      size                    = 96,
      soundStart              = [[weapon/gravity_fire]],
      soundStartVolume        = 0.15,
      thickness               = 96,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 6000,
    },
  },

  explodeAs                     = [[ESTOR_BUILDINGEX]],
  footprintX                    = 3,
  footprintZ                    = 3,
  iconType                      = [[pylon]],
  idleAutoHeal                  = 5,
  idleTime                      = 1800,
  levelGround                   = false,
  maxDamage                     = 1000,
  maxSlope                      = 18,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  objectName                    = [[armestor.s3o]],
  script                        = "energypylon.lua",
  selfDestructAs                = [[ESTOR_BUILDINGEX]],
  sightDistance                 = 273,
  useBuildingGroundDecal        = true,
  yardMap                       = [[ooo ooo ooo]],

  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[ARMESTOR_DEAD.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris4x4b.s3o]],
    },

  },

} }

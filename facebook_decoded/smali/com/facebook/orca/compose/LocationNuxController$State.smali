.class final enum Lcom/facebook/orca/compose/LocationNuxController$State;
.super Ljava/lang/Enum;
.source "LocationNuxController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/compose/LocationNuxController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/compose/LocationNuxController$State;

.field public static final enum LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

.field public static final enum LOCATION_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

.field public static final enum OFF:Lcom/facebook/orca/compose/LocationNuxController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/facebook/orca/compose/LocationNuxController$State;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/compose/LocationNuxController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->OFF:Lcom/facebook/orca/compose/LocationNuxController$State;

    .line 15
    new-instance v0, Lcom/facebook/orca/compose/LocationNuxController$State;

    const-string v1, "LOCATION_NUX_SHOWING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/compose/LocationNuxController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    .line 16
    new-instance v0, Lcom/facebook/orca/compose/LocationNuxController$State;

    const-string v1, "LOCATION_DISABLED_NUX_SHOWING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/compose/LocationNuxController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/orca/compose/LocationNuxController$State;

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->OFF:Lcom/facebook/orca/compose/LocationNuxController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/compose/LocationNuxController$State;->LOCATION_DISABLED_NUX_SHOWING:Lcom/facebook/orca/compose/LocationNuxController$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->$VALUES:[Lcom/facebook/orca/compose/LocationNuxController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/compose/LocationNuxController$State;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/facebook/orca/compose/LocationNuxController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/compose/LocationNuxController$State;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/compose/LocationNuxController$State;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/facebook/orca/compose/LocationNuxController$State;->$VALUES:[Lcom/facebook/orca/compose/LocationNuxController$State;

    invoke-virtual {v0}, [Lcom/facebook/orca/compose/LocationNuxController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/compose/LocationNuxController$State;

    return-object v0
.end method

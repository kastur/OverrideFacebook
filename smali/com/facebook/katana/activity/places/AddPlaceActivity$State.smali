.class final enum Lcom/facebook/katana/activity/places/AddPlaceActivity$State;
.super Ljava/lang/Enum;
.source "AddPlaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/activity/places/AddPlaceActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

.field public static final enum NONE:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

.field public static final enum PROCESSING:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->NONE:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    .line 54
    new-instance v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->PROCESSING:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    .line 52
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    sget-object v1, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->NONE:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->PROCESSING:Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->$VALUES:[Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/activity/places/AddPlaceActivity$State;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/activity/places/AddPlaceActivity$State;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->$VALUES:[Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    invoke-virtual {v0}, [Lcom/facebook/katana/activity/places/AddPlaceActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/activity/places/AddPlaceActivity$State;

    return-object v0
.end method

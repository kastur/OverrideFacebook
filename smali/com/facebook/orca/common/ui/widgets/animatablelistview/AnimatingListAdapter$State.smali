.class final enum Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;
.super Ljava/lang/Enum;
.source "AnimatingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

.field public static final enum STEADY_STATE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

.field public static final enum WAITING_FOR_ANIMATION_TO_FINISH:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    const-string v1, "STEADY_STATE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;->STEADY_STATE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    .line 58
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    const-string v1, "WAITING_FOR_ANIMATION_TO_FINISH"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;->WAITING_FOR_ANIMATION_TO_FINISH:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;->STEADY_STATE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;->WAITING_FOR_ANIMATION_TO_FINISH:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;
    .locals 1
    .parameter

    .prologue
    .line 56
    const-class v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    invoke-virtual {v0}, [Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListAdapter$State;

    return-object v0
.end method

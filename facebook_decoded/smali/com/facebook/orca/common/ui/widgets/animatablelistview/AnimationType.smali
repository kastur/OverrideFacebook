.class public final enum Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;
.super Ljava/lang/Enum;
.source "AnimationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

.field public static final enum HIDE_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

.field public static final enum HIDE_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

.field public static final enum REVEAL_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

.field public static final enum REVEAL_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    const-string v1, "REVEAL_WITH_ANIMATION_UP"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->REVEAL_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    .line 10
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    const-string v1, "REVEAL_WITH_ANIMATION_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->REVEAL_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    .line 11
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    const-string v1, "HIDE_WITH_ANIMATION_UP"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->HIDE_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    .line 12
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    const-string v1, "HIDE_WITH_ANIMATION_DOWN"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->HIDE_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->REVEAL_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->REVEAL_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->HIDE_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->HIDE_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    invoke-virtual {v0}, [Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;

    return-object v0
.end method


# virtual methods
.method public final toMutationType()Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :pswitch_0
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 23
    :goto_0
    return-object v0

    .line 19
    :pswitch_1
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    goto :goto_0

    .line 21
    :pswitch_2
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    goto :goto_0

    .line 23
    :pswitch_3
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

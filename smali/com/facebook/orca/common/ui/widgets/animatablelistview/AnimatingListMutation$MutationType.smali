.class public final enum Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;
.super Ljava/lang/Enum;
.source "AnimatingListMutation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

.field public static final enum ADD:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

.field public static final enum ADD_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

.field public static final enum ADD_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

.field public static final enum MARKED_FOR_REPLACE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

.field public static final enum REMOVE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

.field public static final enum REMOVE_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

.field public static final enum REMOVE_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

.field public static final enum REPLACE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 14
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    const-string v1, "ADD_WITH_ANIMATION_UP"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 15
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    const-string v1, "ADD_WITH_ANIMATION_DOWN"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 16
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v6}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 17
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    const-string v1, "REMOVE_WITH_ANIMATION_UP"

    invoke-direct {v0, v1, v7}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 18
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    const-string v1, "REMOVE_WITH_ANIMATION_DOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 19
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    const-string v1, "REPLACE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REPLACE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 20
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    const-string v1, "MARKED_FOR_REPLACE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->MARKED_FOR_REPLACE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    .line 12
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->ADD_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_UP:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REMOVE_WITH_ANIMATION_DOWN:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->REPLACE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->MARKED_FOR_REPLACE:Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;
    .locals 1
    .parameter

    .prologue
    .line 12
    const-class v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    invoke-virtual {v0}, [Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/common/ui/widgets/animatablelistview/AnimatingListMutation$MutationType;

    return-object v0
.end method

.class public final enum Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;
.super Ljava/lang/Enum;
.source "RefreshableListViewState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field public static final enum BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field public static final enum LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field public static final enum NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field public static final enum PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field public static final enum PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

.field public static final enum RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 10
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    const-string v1, "PULL_TO_REFRESH"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 11
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    const-string v1, "PUSH_TO_REFRESH"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 12
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    const-string v1, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v1, v6}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 13
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v7}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 14
    new-instance v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    const-string v1, "BUFFERING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->NORMAL:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PULL_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->PUSH_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->RELEASE_TO_REFRESH:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->LOADING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->BUFFERING:Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    return-object v0
.end method

.method public static values()[Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->$VALUES:[Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    invoke-virtual {v0}, [Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewState;

    return-object v0
.end method

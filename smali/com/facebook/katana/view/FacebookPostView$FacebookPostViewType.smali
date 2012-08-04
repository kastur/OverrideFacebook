.class public final enum Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;
.super Ljava/lang/Enum;
.source "FacebookPostView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

.field public static final enum FEEDBACK_VIEW:Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

.field public static final enum STREAM_VIEW:Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    const-string v1, "STREAM_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;->STREAM_VIEW:Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    .line 53
    new-instance v0, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    const-string v1, "FEEDBACK_VIEW"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;->FEEDBACK_VIEW:Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    sget-object v1, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;->STREAM_VIEW:Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;->FEEDBACK_VIEW:Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;->$VALUES:[Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;->$VALUES:[Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    invoke-virtual {v0}, [Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/katana/view/FacebookPostView$FacebookPostViewType;

    return-object v0
.end method

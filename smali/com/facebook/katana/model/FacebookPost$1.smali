.class final Lcom/facebook/katana/model/FacebookPost$1;
.super Ljava/lang/Object;
.source "FacebookPost.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/model/FacebookPost;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/model/FacebookPost;Lcom/facebook/katana/model/FacebookPost;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    iget-wide v2, p1, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 46
    const/4 v0, -0x1

    .line 50
    :goto_0
    return v0

    .line 47
    :cond_0
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    iget-wide v2, p1, Lcom/facebook/katana/model/FacebookPost;->createdTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 48
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    check-cast p1, Lcom/facebook/katana/model/FacebookPost;

    check-cast p2, Lcom/facebook/katana/model/FacebookPost;

    invoke-static {p1, p2}, Lcom/facebook/katana/model/FacebookPost$1;->a(Lcom/facebook/katana/model/FacebookPost;Lcom/facebook/katana/model/FacebookPost;)I

    move-result v0

    return v0
.end method

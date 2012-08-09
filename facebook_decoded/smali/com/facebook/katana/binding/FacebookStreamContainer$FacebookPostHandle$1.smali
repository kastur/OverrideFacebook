.class final Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle$1;
.super Ljava/lang/Object;
.source "FacebookStreamContainer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 338
    iget-wide v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->c:J

    iget-wide v2, p1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 339
    const/4 v0, -0x1

    .line 343
    :goto_0
    return v0

    .line 340
    :cond_0
    iget-wide v0, p0, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->c:J

    iget-wide v2, p1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 341
    const/4 v0, 0x0

    goto :goto_0

    .line 343
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
    .line 335
    check-cast p1, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    check-cast p2, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;

    invoke-static {p1, p2}, Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle$1;->a(Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;Lcom/facebook/katana/binding/FacebookStreamContainer$FacebookPostHandle;)I

    move-result v0

    return v0
.end method

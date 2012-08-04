.class Lcom/facebook/katana/binding/StreamPhotosCache$2;
.super Ljava/lang/Object;
.source "StreamPhotosCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/binding/StreamPhoto;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/katana/binding/StreamPhotosCache;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhoto;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/facebook/katana/binding/StreamPhoto;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/katana/binding/StreamPhoto;->e()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/katana/binding/StreamPhoto;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/facebook/katana/binding/StreamPhoto;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 203
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 197
    check-cast p1, Lcom/facebook/katana/binding/StreamPhoto;

    check-cast p2, Lcom/facebook/katana/binding/StreamPhoto;

    invoke-static {p1, p2}, Lcom/facebook/katana/binding/StreamPhotosCache$2;->a(Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhoto;)I

    move-result v0

    return v0
.end method

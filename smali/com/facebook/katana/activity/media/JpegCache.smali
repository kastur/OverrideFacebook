.class Lcom/facebook/katana/activity/media/JpegCache;
.super Landroid/support/v4/util/LruCache;
.source "MediaPickerGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 233
    const/high16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 234
    return-void
.end method

.method private static a([B)I
    .locals 1
    .parameter

    .prologue
    .line 240
    array-length v0, p0

    return v0
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 227
    check-cast p2, [B

    invoke-static {p2}, Lcom/facebook/katana/activity/media/JpegCache;->a([B)I

    move-result v0

    return v0
.end method

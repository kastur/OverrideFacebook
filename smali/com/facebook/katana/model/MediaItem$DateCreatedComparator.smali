.class Lcom/facebook/katana/model/MediaItem$DateCreatedComparator;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/model/MediaItem;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/facebook/katana/model/MediaItem$DateCreatedComparator;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/model/MediaItem;Lcom/facebook/katana/model/MediaItem;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-virtual {p1}, Lcom/facebook/katana/model/MediaItem;->c()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/katana/model/MediaItem;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    check-cast p1, Lcom/facebook/katana/model/MediaItem;

    check-cast p2, Lcom/facebook/katana/model/MediaItem;

    invoke-static {p1, p2}, Lcom/facebook/katana/model/MediaItem$DateCreatedComparator;->a(Lcom/facebook/katana/model/MediaItem;Lcom/facebook/katana/model/MediaItem;)I

    move-result v0

    return v0
.end method

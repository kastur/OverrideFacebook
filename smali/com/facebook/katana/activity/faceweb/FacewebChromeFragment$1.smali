.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$1;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Lcom/facebook/katana/activity/faceweb/FacewebAssassin$AssassinFilter;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 342
    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(J)Z
    .locals 2
    .parameter

    .prologue
    .line 347
    const-wide/32 v0, 0x88b8

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

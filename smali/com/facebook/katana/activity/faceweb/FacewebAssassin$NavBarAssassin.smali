.class public Lcom/facebook/katana/activity/faceweb/FacewebAssassin$NavBarAssassin;
.super Ljava/lang/Object;
.source "FacewebAssassin.java"

# interfaces
.implements Lcom/facebook/katana/activity/faceweb/FacewebAssassin$AssassinFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public final a(J)Z
    .locals 2
    .parameter

    .prologue
    .line 44
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

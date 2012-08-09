.class public Lcom/facebook/orca/location/LocationCache;
.super Ljava/lang/Object;
.source "LocationCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private volatile b:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    const-wide/16 v0, 0x5

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/location/LocationCache;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/location/LocationCache;->b:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/facebook/orca/location/LocationCache;->b:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/facebook/orca/location/LocationCache;->a:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/location/LocationCache;->b:Landroid/location/Location;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/location/LocationCache;->b:Landroid/location/Location;

    return-object v0
.end method

.method public final a(Landroid/location/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/facebook/orca/location/LocationCache;->b:Landroid/location/Location;

    .line 30
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/location/LocationCache;->b:Landroid/location/Location;

    .line 34
    return-void
.end method

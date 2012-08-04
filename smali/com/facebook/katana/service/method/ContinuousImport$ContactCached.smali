.class public Lcom/facebook/katana/service/method/ContinuousImport$ContactCached;
.super Ljava/lang/Object;
.source "ContinuousImport.java"


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(Lcom/facebook/katana/service/method/ContinuousImport;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iput-wide p2, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactCached;->a:J

    .line 477
    iput-wide p4, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactCached;->b:J

    .line 478
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 482
    iget-wide v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactCached;->a:J

    return-wide v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 486
    iget-wide v0, p0, Lcom/facebook/katana/service/method/ContinuousImport$ContactCached;->b:J

    return-wide v0
.end method

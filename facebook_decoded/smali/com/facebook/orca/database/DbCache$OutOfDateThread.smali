.class public Lcom/facebook/orca/database/DbCache$OutOfDateThread;
.super Ljava/lang/Object;
.source "DbCache.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:J

.field private final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p2, p0, Lcom/facebook/orca/database/DbCache$OutOfDateThread;->a:J

    .line 44
    iput-wide p4, p0, Lcom/facebook/orca/database/DbCache$OutOfDateThread;->b:J

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/database/DbCache$OutOfDateThread;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/facebook/orca/database/DbCache$OutOfDateThread;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/facebook/orca/database/DbCache$OutOfDateThread;->a:J

    return-wide v0
.end method

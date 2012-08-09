.class public Lcom/facebook/orca/share/ShareMediaVideoBuilder;
.super Ljava/lang/Object;
.source "ShareMediaVideoBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->a:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->c:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaVideoBuilder;->d:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final e()Lcom/facebook/orca/share/ShareMediaVideo;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/orca/share/ShareMediaVideo;

    invoke-direct {v0, p0}, Lcom/facebook/orca/share/ShareMediaVideo;-><init>(Lcom/facebook/orca/share/ShareMediaVideoBuilder;)V

    return-object v0
.end method

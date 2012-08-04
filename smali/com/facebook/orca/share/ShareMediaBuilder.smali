.class public Lcom/facebook/orca/share/ShareMediaBuilder;
.super Ljava/lang/Object;
.source "ShareMediaBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/facebook/orca/share/ShareMediaPhoto;

.field private f:Lcom/facebook/orca/share/ShareMediaVideo;


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
    .line 21
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/facebook/orca/share/ShareMediaPhoto;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->e:Lcom/facebook/orca/share/ShareMediaPhoto;

    .line 58
    return-void
.end method

.method public final a(Lcom/facebook/orca/share/ShareMediaVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->f:Lcom/facebook/orca/share/ShareMediaVideo;

    .line 66
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->c:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public final e()Lcom/facebook/orca/share/ShareMediaPhoto;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->e:Lcom/facebook/orca/share/ShareMediaPhoto;

    return-object v0
.end method

.method public final f()Lcom/facebook/orca/share/ShareMediaVideo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/share/ShareMediaBuilder;->f:Lcom/facebook/orca/share/ShareMediaVideo;

    return-object v0
.end method

.method public final g()Lcom/facebook/orca/share/ShareMedia;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/orca/share/ShareMedia;

    invoke-direct {v0, p0}, Lcom/facebook/orca/share/ShareMedia;-><init>(Lcom/facebook/orca/share/ShareMediaBuilder;)V

    return-object v0
.end method

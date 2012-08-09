.class public abstract Lcom/facebook/orca/common/async/KeyedAsyncTask;
.super Ljava/lang/Object;
.source "KeyedAsyncTask.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/orca/common/async/KeyedAsyncTask;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method final c()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method final d()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->a()V

    .line 25
    return-void
.end method

.method final e()V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/facebook/orca/common/async/KeyedAsyncTask;->b()V

    .line 30
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/common/async/KeyedAsyncTask;->a:Ljava/lang/String;

    return-object v0
.end method

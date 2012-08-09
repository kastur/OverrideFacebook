.class Lcom/facebook/orca/common/async/Deferred$3;
.super Ljava/lang/Object;
.source "Deferred.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/common/async/Deferred;


# direct methods
.method constructor <init>(Lcom/facebook/orca/common/async/Deferred;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/facebook/orca/common/async/Deferred$3;->a:Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred$3;->a:Lcom/facebook/orca/common/async/Deferred;

    invoke-static {v0, p1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferred;Ljava/lang/Object;)V

    .line 318
    const/4 v0, 0x0

    return-object v0
.end method

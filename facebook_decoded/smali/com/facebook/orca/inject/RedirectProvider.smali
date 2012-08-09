.class public Lcom/facebook/orca/inject/RedirectProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "RedirectProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Key",
            "<+TT;>;"
        }
    .end annotation
.end field

.field private volatile b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/inject/Key;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/facebook/orca/inject/RedirectProvider;->a:Lcom/google/inject/Key;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/orca/inject/RedirectProvider;->b:Ljavax/inject/Provider;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/facebook/orca/inject/RedirectProvider;->a:Lcom/google/inject/Key;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/inject/RedirectProvider;->a(Lcom/google/inject/Key;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/inject/RedirectProvider;->b:Ljavax/inject/Provider;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/inject/RedirectProvider;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

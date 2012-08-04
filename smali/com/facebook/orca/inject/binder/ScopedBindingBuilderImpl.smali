.class public Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;
.super Ljava/lang/Object;
.source "ScopedBindingBuilderImpl.java"

# interfaces
.implements Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/facebook/orca/inject/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/inject/Binding",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/inject/Binding;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/inject/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    invoke-static {}, Lcom/facebook/orca/inject/SingletonScope;->get()Lcom/facebook/orca/inject/SingletonScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/Binding;->a(Lcom/facebook/orca/inject/Scope;)V

    .line 23
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    invoke-static {}, Lcom/facebook/orca/inject/SingletonScope;->get()Lcom/facebook/orca/inject/SingletonScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/Binding;->a(Lcom/facebook/orca/inject/Scope;)V

    .line 28
    iget-object v0, p0, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/Binding;->a(Z)V

    .line 29
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/inject/binder/ScopedBindingBuilderImpl;->a:Lcom/facebook/orca/inject/Binding;

    invoke-static {}, Lcom/facebook/orca/inject/ThreadLocalScope;->get()Lcom/facebook/orca/inject/ThreadLocalScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/Binding;->a(Lcom/facebook/orca/inject/Scope;)V

    .line 34
    return-void
.end method

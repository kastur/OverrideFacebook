.class Lcom/facebook/orca/app/FbBaseModule$AppSystemServiceProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbBaseModule.java"


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
.field private final a:Ljava/lang/String;

.field private synthetic b:Lcom/facebook/orca/app/FbBaseModule;


# direct methods
.method constructor <init>(Lcom/facebook/orca/app/FbBaseModule;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/facebook/orca/app/FbBaseModule$AppSystemServiceProvider;->b:Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/facebook/orca/app/FbBaseModule$AppSystemServiceProvider;->a:Ljava/lang/String;

    .line 192
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/orca/app/FbBaseModule$AppSystemServiceProvider;->b:Lcom/facebook/orca/app/FbBaseModule;

    invoke-static {v0}, Lcom/facebook/orca/app/FbBaseModule;->b(Lcom/facebook/orca/app/FbBaseModule;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/app/FbBaseModule$AppSystemServiceProvider;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

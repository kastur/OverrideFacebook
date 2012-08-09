.class Lcom/facebook/katana/orca/FbandroidAppModule$FbandroidAuthenticationManagerProvider;
.super Lcom/facebook/orca/inject/AbstractProvider;
.source "FbandroidAppModule.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/orca/inject/AbstractProvider",
        "<",
        "Lcom/facebook/orca/auth/OrcaAuthenticationManager;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/katana/orca/FbandroidAppModule;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/orca/FbandroidAppModule;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidAppModule$FbandroidAuthenticationManagerProvider;->a:Lcom/facebook/katana/orca/FbandroidAppModule;

    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/orca/FbandroidAppModule;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/katana/orca/FbandroidAppModule$FbandroidAuthenticationManagerProvider;-><init>(Lcom/facebook/katana/orca/FbandroidAppModule;)V

    return-void
.end method

.method private b()Lcom/facebook/orca/auth/OrcaAuthenticationManager;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;

    iget-object v1, p0, Lcom/facebook/katana/orca/FbandroidAppModule$FbandroidAuthenticationManagerProvider;->a:Lcom/facebook/katana/orca/FbandroidAppModule;

    invoke-static {v1}, Lcom/facebook/katana/orca/FbandroidAppModule;->a(Lcom/facebook/katana/orca/FbandroidAppModule;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/orca/FbandroidAuthenticationManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidAppModule$FbandroidAuthenticationManagerProvider;->b()Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    move-result-object v0

    return-object v0
.end method

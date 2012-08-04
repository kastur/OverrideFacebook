.class public Lcom/facebook/katana/activity/ActivityAuthHelper;
.super Lcom/facebook/orca/activity/AbstractFbActivityListener;
.source "ActivityAuthHelper.java"


# instance fields
.field private final a:Lcom/facebook/orca/auth/OrcaAuthenticationManager;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/auth/OrcaAuthenticationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/activity/AbstractFbActivityListener;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/facebook/katana/activity/ActivityAuthHelper;->a:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 22
    return-void
.end method

.method private h(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AuthNotRequired;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/ActivityAuthHelper;->a:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/activity/ActivityAuthHelper;->a:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v0}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    :cond_2
    invoke-static {p1}, Lcom/facebook/katana/activity/login/RealLoginActivity;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/ActivityAuthHelper;->h(Landroid/app/Activity;)V

    .line 28
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/ActivityAuthHelper;->h(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

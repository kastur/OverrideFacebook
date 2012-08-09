.class public Lcom/facebook/katana/orca/FbandroidAppModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "FbandroidAppModule.java"


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lcom/facebook/orca/inject/ContextScope;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/facebook/orca/inject/ContextScope;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidAppModule;->a:Landroid/app/Application;

    .line 28
    iput-object p2, p0, Lcom/facebook/katana/orca/FbandroidAppModule;->b:Lcom/facebook/orca/inject/ContextScope;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/orca/FbandroidAppModule;)Landroid/app/Application;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidAppModule;->a:Landroid/app/Application;

    return-object v0
.end method

.method private b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidAppModule;->b:Lcom/facebook/orca/inject/ContextScope;

    invoke-virtual {v0}, Lcom/facebook/orca/inject/ContextScope;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/orca/FbandroidAppModule;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/facebook/katana/orca/FbandroidAppModule;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    const-class v0, Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidAppModule$FbandroidAuthenticationManagerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidAppModule$FbandroidAuthenticationManagerProvider;-><init>(Lcom/facebook/katana/orca/FbandroidAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 42
    const-class v0, Lcom/facebook/katana/activity/ShortcutDialogInjector;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidAppModule$ShortcutDialogInjectorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidAppModule$ShortcutDialogInjectorProvider;-><init>(Lcom/facebook/katana/orca/FbandroidAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 45
    const-class v0, Lcom/facebook/katana/activity/ActivityAuthHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidAppModule$ActivityAuthHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidAppModule$ActivityAuthHelperProvider;-><init>(Lcom/facebook/katana/orca/FbandroidAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 47
    const-class v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidAppModule$FacebookActivityDelegateProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidAppModule$FacebookActivityDelegateProvider;-><init>(Lcom/facebook/katana/orca/FbandroidAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 48
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidAppModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/ActivityAuthHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/activity/ShortcutDialogInjector;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 52
    new-instance v0, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;

    iget-object v1, p0, Lcom/facebook/katana/orca/FbandroidAppModule;->a:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidAppModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 53
    return-void
.end method

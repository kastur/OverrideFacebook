.class public Lcom/facebook/orca/analytics/OrcaAnalyticsModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "OrcaAnalyticsModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;->a:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    const-class v0, Lcom/facebook/orca/analytics/HoneyAnalyticsPeriodicReporter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 36
    const-class v0, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$DefaultHoneyAnalyticsPeriodicReporterProvider;-><init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 39
    const-class v0, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$HoneyAnalyticsUploadHandlerProvider;-><init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 42
    const-class v0, Lcom/facebook/orca/protocol/methods/SendAnalyticLogsMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$SendAnalyticLogsMethodProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule$SendAnalyticLogsMethodProvider;-><init>(Lcom/facebook/orca/analytics/OrcaAnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 45
    return-void
.end method

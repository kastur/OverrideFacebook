.class public Lcom/facebook/orca/analytics/AnalyticsModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "AnalyticsModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/orca/analytics/AnalyticsModule;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/analytics/AnalyticsModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/orca/analytics/AnalyticsModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsDatabaseSupplier;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseSupplierProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 38
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsDbSchemaPart;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDbSchemaPartProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDbSchemaPartProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 41
    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/AnalyticsDb;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDatabaseProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 45
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsPropertyUtil;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsPropertyUtilProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsPropertyUtilProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 47
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsStorage;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsStorageProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsStorageProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 50
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsEventProcessor;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsEventProcessorProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 53
    const-class v0, Lcom/facebook/orca/analytics/AnalyticCounters;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticCountersProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticCountersProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 56
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 59
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$DefaultAnalyticsConfigProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 62
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerActivityListenerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsLoggerActivityListenerProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 65
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger$MyActivityListener;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 67
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsDeviceUtils;

    invoke-virtual {p0, v0}, Lcom/facebook/orca/analytics/AnalyticsModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/orca/analytics/AnalyticsModule$AnalyticsDeviceUtilsProvider;-><init>(Lcom/facebook/orca/analytics/AnalyticsModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 70
    return-void
.end method

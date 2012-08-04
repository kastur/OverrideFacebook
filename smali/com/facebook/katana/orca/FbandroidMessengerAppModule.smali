.class public Lcom/facebook/katana/orca/FbandroidMessengerAppModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "FbandroidMessengerAppModule.java"


# instance fields
.field private final a:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a:Landroid/app/Application;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;)Landroid/app/Application;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a:Landroid/app/Application;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    const-class v0, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$FbandroidPackageInfoProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$FbandroidPackageInfoProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 71
    const-class v0, Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/app/OrcaAppType;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 73
    const-class v0, Lcom/facebook/orca/app/OrcaAppType;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaAppTypeProvider;

    invoke-direct {v1, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaAppTypeProvider;-><init>(B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 76
    const-class v0, Landroid/content/SharedPreferences;

    const-class v1, Lcom/facebook/orca/annotations/DefaultSharedPreferences;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$DefaultSharedPreferencesProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$DefaultSharedPreferencesProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 79
    const-class v0, Lcom/facebook/orca/config/OrcaProductionConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaProductionConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaProductionConfigProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 82
    const-class v0, Lcom/facebook/orca/config/OrcaConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaConfigProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 84
    const-class v0, Lcom/facebook/orca/intents/MessagingIntentUris;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingIntentUrisProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingIntentUrisProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 87
    const-class v0, Lcom/facebook/orca/notify/MessagingNotificationPreferences;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingNotificationPreferencesProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessagingNotificationPreferencesProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 90
    const-class v0, Lcom/facebook/orca/common/visuals/VisualAppTheme;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/visuals/VisualAppTheme;->FB4A:Lcom/facebook/orca/common/visuals/VisualAppTheme;

    invoke-static {v1}, Lcom/google/inject/util/Providers;->a(Ljava/lang/Object;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 92
    const-class v0, Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/IsAnalyticsEnabled;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 95
    const-class v0, Lcom/facebook/orca/app/MessagesDataInitializationActivityHelper;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$DataInitializationActivityHelperProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$DataInitializationActivityHelperProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 97
    const-class v0, Lcom/facebook/orca/analytics/AnalyticsConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$AnalyticsConfigProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$AnalyticsConfigProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 100
    const-class v0, Lcom/facebook/orca/app/OrcaDatabaseInitializer;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaDatabaseInitializerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$OrcaDatabaseInitializerProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 102
    const-class v0, Lcom/facebook/katana/orca/FbandroidPushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$FbandroidPushHandlerProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$FbandroidPushHandlerProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 104
    const-class v0, Lcom/facebook/orca/notify/MessengerForegroundProvider;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessengerForegroundProviderProvider;

    invoke-direct {v1, p0, v2}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule$MessengerForegroundProviderProvider;-><init>(Lcom/facebook/katana/orca/FbandroidMessengerAppModule;B)V

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 107
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/annotations/MessagesForegroundProviderUri;

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v0

    const-string v1, "content://com.facebook.orca.notify.MessengerForegroundProvider/orca_foreground"

    invoke-interface {v0, v1}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 111
    const-class v0, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/app/MessagesDataInitializationActivityHelper;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 114
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsHighPriorityInitOnBackgroundThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->b(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/app/OrcaDatabaseInitializer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/app/MessagesDatabasesReadyInitializer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 119
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnUiThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->b(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/debug/OrcaLogImpl;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/orca/analytics/DefaultHoneyAnalyticsPeriodicReporter;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 125
    const-class v0, Lcom/facebook/orca/app/INeedInit;

    const-class v1, Lcom/facebook/orca/annotations/NeedsLowPriorityInitOnBackgroundThread;

    invoke-static {v0, v1}, Lcom/google/inject/Key;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->b(Lcom/google/inject/Key;)Lcom/facebook/orca/inject/MultiBinding;

    .line 127
    const-class v0, Lcom/facebook/orca/push/PushHandler;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v0

    const-class v1, Lcom/facebook/katana/orca/FbandroidPushHandler;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 129
    return-void
.end method

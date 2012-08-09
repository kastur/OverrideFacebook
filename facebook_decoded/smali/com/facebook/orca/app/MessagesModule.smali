.class public Lcom/facebook/orca/app/MessagesModule;
.super Lcom/facebook/orca/inject/AbstractModule;
.source "MessagesModule.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/facebook/orca/inject/AbstractModule;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/facebook/orca/app/MessagesModule;->a:Landroid/content/Context;

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/app/MessagesModule;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/orca/app/MessagesModule;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    const-string v0, "OrcaLibModule.configure"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;

    invoke-direct {v1}, Lcom/facebook/orca/contacts/picker/MessagesContactPickerModule;-><init>()V

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Lcom/facebook/orca/inject/Module;)V

    .line 240
    const-class v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/protocol/base/RealBatchRunner;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 241
    const-class v1, Lcom/facebook/orca/debug/OrcaErrorReporter;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/debug/OrcaErrorReporterImpl;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 243
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/DisableSmsConfirmationFlow;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 246
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/DisableBackgroundOperations;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 249
    const-class v1, Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/app/MessagesModule;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Object;)V

    .line 252
    const-class v1, Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsAnalyticsEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/analytics/IsAnalyticsEnabledProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 255
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsAudioMessageEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/audio/IsAudioMessageEnabledProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 258
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsPhpProfilingEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/protocol/base/IsPhpProfilingEnabledProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 261
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsWirehogProfilingEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/protocol/base/IsWirehogProfilingEnabledProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 264
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsPresenceEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/presence/IsPresenceEnabledProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 267
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsDeliveredReadReceiptEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/cache/IsDeliveredReadReceiptEnabledProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 270
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/sms/IsClientSmsEnabledProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 273
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsClientSmsPermitted;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/sms/IsClientSmsPermittedProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 276
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsMoreMobileFriendsEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/presence/IsMoreMobileFriendsEnabledProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 279
    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsLastActiveEnabled;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/users/IsLastActiveEnabledProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 283
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/UserAgentString;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaUserAgentProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaUserAgentProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 287
    const-class v1, Lcom/facebook/orca/app/OrcaDataManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaDataManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 290
    const-class v1, Lcom/facebook/orca/cache/AppConfigCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$AppConfigCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$AppConfigCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 293
    const-class v1, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DataCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 296
    const-class v1, Lcom/facebook/orca/cache/SendMessageManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SendMessageManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 299
    const-class v1, Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ArchiveThreadManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ArchiveThreadManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 302
    const-class v1, Lcom/facebook/orca/cache/ReadThreadManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ReadThreadManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 305
    const-class v1, Lcom/facebook/orca/cache/SaveDraftManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SaveDraftManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SaveDraftManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 308
    const-class v1, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadDisplayCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 311
    const-class v1, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadParticipantUtilsProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadParticipantUtilsProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 314
    const-class v1, Lcom/facebook/orca/cache/ThreadsCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadsCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 317
    const-class v1, Lcom/facebook/orca/cache/ChatVisibilityCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ChatVisiblityCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ChatVisiblityCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 320
    const-class v1, Lcom/facebook/orca/common/OrcaWakeLockManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaWakeLockManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaWakeLockManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 323
    const-class v1, Lcom/facebook/orca/push/c2dm/C2DMReceiverWakeLockHolder;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$C2DMReceiverWakeLockHolderProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$C2DMReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 326
    const-class v1, Lcom/facebook/orca/sms/SmsReceiverWakeLockHolder;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SmsReceiverWakeLockHolderProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SmsReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 329
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttReceiverWakeLockHolder;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MqttReceiverWakeLockHolderProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MqttReceiverWakeLockHolderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 332
    const-class v1, Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaSharedPreferencesProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaSharedPreferencesProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 335
    const-class v1, Lcom/facebook/orca/prefs/UiCounters;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$UiCountersProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$UiCountersProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 338
    const-class v1, Lcom/facebook/orca/common/async/KeyedAsyncTaskExecutor;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$KeyedAsyncTaskExecutorProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$KeyedAsyncTaskExecutorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 341
    const-class v1, Lcom/facebook/orca/images/ImageCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ImageCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ImageCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 344
    const-class v1, Lcom/facebook/orca/images/FetchImageCoordinator;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchImageCoordinatorProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchImageCoordinatorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 347
    const-class v1, Lcom/facebook/orca/location/LocationCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$LocationCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$LocationCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 350
    const-class v1, Lcom/facebook/orca/database/DbCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 353
    const-class v1, Lcom/facebook/orca/database/ThreadsDatabaseSupplier;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadsDatabaseSupplierProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadsDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 356
    const-class v1, Lcom/facebook/orca/database/UsersDatabaseSupplier;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$UsersDatabaseSupplierProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$UsersDatabaseSupplierProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 359
    const-class v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 362
    const-class v1, Lcom/facebook/orca/server/BackgroundRefreshRunner;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 365
    const-class v1, Lcom/facebook/orca/push/PushManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$PushManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 368
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttConnectionManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MqttConnectionManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 371
    const-class v1, Lcom/facebook/orca/push/MessengerPushHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessengerPushHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 374
    const-class v1, Lcom/facebook/orca/push/c2dm/C2DMRegistrar;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$C2DMRegistrarProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 377
    const-class v1, Lcom/facebook/orca/presence/PresenceManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 380
    const-class v1, Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$PresenceManagerActivityListenerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$PresenceManagerActivityListenerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 383
    const-class v1, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaForegroundActivityListenerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaForegroundActivityListenerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 386
    const-class v1, Lcom/facebook/orca/debug/OrcaLogImpl;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaLogImplProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaLogImplProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 389
    const-class v1, Lcom/facebook/orca/photos/tiles/DefaultTiles;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 392
    const-class v1, Lcom/facebook/orca/common/util/OfflineThreadingIdGenerator;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OfflineThreadingIdGeneratorProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OfflineThreadingIdGeneratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 395
    const-class v1, Lcom/facebook/orca/net/OrcaNetworkManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaNetworkManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaNetworkManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 398
    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/ThreadsDb;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadsDatabaseProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadsDatabaseProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 402
    const-class v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/UsersDb;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$UsersDatabaseProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$UsersDatabaseProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 406
    const-class v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$PhoneNumberUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 409
    const-class v1, Lcom/facebook/orca/common/util/PhoneNumberFormatter;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$PhoneNumberFormatterProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$PhoneNumberFormatterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 412
    const-class v1, Lcom/facebook/orca/common/names/NameSplitter;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$NameSplitterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 415
    const-class v1, Lcom/facebook/orca/database/DbMessageCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbMessageCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbMessageCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 418
    const-class v1, Lcom/facebook/orca/analytics/ReliabilityAnalyticsLogger;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ReliabilityAnalyticsLoggerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ReliabilityAnalyticsLoggerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 421
    const-class v1, Lcom/facebook/orca/debug/OrcaErrorReporterImpl;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaErrorReporterImplProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaErrorReporterImplProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 424
    const-class v1, Lcom/facebook/orca/database/DbClock;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbClockProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbClockProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 427
    const-class v1, Lcom/facebook/orca/cache/DeliveredReadReceiptManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DeliveredReadReceiptManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 430
    const-class v1, Lcom/facebook/orca/threadview/MessageDeliveredReadStateDisplayUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessageDeliveredReadStateDisplayUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessageDeliveredReadStateDisplayUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 433
    const-class v1, Lcom/facebook/orca/notify/MessagingNotificationRenderer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessagingNotificationRendererProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 436
    const-class v1, Lcom/facebook/orca/notify/InAppNotificationController;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 439
    const-class v1, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerActivityListenerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$InAppNotificationControllerActivityListenerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 443
    const-class v1, Lcom/facebook/orca/location/GeocodingCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$GeocodingCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$GeocodingCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 446
    const-class v1, Lcom/facebook/orca/threadlist/MeOnlinePresenceManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MeOnlinePresenceManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MeOnlinePresenceManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 450
    const-class v1, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$GlobalNotificationPrefsSynchronizerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$GlobalNotificationPrefsSynchronizerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->b()V

    .line 453
    const-class v1, Lcom/facebook/orca/prefs/ThreadNotificationPrefsSynchronizer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadNotificationPrefsSynchronizerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadNotificationPrefsSynchronizerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->b()V

    .line 456
    const-class v1, Lcom/facebook/orca/notify/OrcaNotificationManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaNotificationManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->b()V

    .line 459
    const-class v1, Lcom/facebook/orca/server/OrcaServiceManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaServiceManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->b()V

    .line 462
    const-class v1, Lcom/facebook/orca/server/OrcaServiceQueueManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaServiceQueueManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceQueueManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 467
    const-class v1, Lcom/facebook/orca/app/OrcaDatabaseManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaDatabaseManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 470
    const-class v1, Lcom/facebook/orca/database/UsersDbSchemaPart;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$UsersDbSchemaPartProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$UsersDbSchemaPartProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 473
    const-class v1, Lcom/facebook/orca/database/ThreadsDbSchemaPart;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadsDbSchemaPartProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadsDbSchemaPartProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 477
    const-class v1, Lcom/facebook/orca/app/OrcaActivityBroadcaster;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaActivityBroadcasterProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaActivityBroadcasterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 479
    const-class v1, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaServiceHandlerHookForAppProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceHandlerHookForAppProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 481
    const-class v1, Lcom/facebook/orca/attachments/AttachmentDataFactory;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$AttachmentDataFactoryProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$AttachmentDataFactoryProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 483
    const-class v1, Lcom/facebook/orca/attachments/MediaAttachmentFactory;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MediaAttachmentFactoryProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MediaAttachmentFactoryProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 485
    const-class v1, Lcom/facebook/orca/cache/CacheServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$CacheServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 487
    const-class v1, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ErrorDialogBuilderProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ErrorDialogBuilderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 489
    const-class v1, Lcom/facebook/orca/common/dialogs/ErrorMessageGenerator;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ErrorMessageGeneratorProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ErrorMessageGeneratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 491
    const-class v1, Lcom/facebook/orca/common/ui/util/MessageRenderingUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessageRenderingUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 493
    const-class v1, Lcom/facebook/orca/users/LastActiveHelper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$LastActiveHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 495
    const-class v1, Lcom/facebook/orca/common/ui/widgets/AnchorableToast;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$AnchorableToastProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$AnchorableToastProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 497
    const-class v1, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameViewComputer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadNameViewComputerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 499
    const-class v1, Lcom/facebook/orca/common/ui/widgets/text/RowReceiptTextViewComputer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$RowReceiptTextViewComputerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$RowReceiptTextViewComputerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 501
    const-class v1, Lcom/facebook/orca/common/ui/widgets/text/TextListWithMoreComputer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$TextListWithMoreComputerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$TextListWithMoreComputerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 503
    const-class v1, Lcom/facebook/orca/database/DbInsertFriendUsersHandler$MyNameLookupBuilder;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbInsertFriendUsersHandlerMyNameLookupBuilder;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 505
    const-class v1, Lcom/facebook/orca/common/util/FileSizeUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FileSizeUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FileSizeUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 508
    const-class v1, Lcom/facebook/orca/database/DbDraftSerialization;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbDraftSerializationProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbDraftSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 511
    const-class v1, Lcom/facebook/orca/users/UserClusterFetcher;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$UserClusterFetcherProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$UserClusterFetcherProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 513
    const-class v1, Lcom/facebook/orca/database/DbFetchThreadHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 515
    const-class v1, Lcom/facebook/orca/database/DbFetchThreadUsersHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadUsersHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadUsersHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 517
    const-class v1, Lcom/facebook/orca/database/DbFetchThreadsHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbFetchThreadsHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 519
    const-class v1, Lcom/facebook/orca/database/DbInsertFriendUsersHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbInsertFriendUsersHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbInsertFriendUsersHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 521
    const-class v1, Lcom/facebook/orca/database/DbInsertThreadUsersHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbInsertThreadUsersHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbInsertThreadUsersHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 523
    const-class v1, Lcom/facebook/orca/database/DbInsertThreadsHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbInsertThreadsHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbInsertThreadsHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 525
    const-class v1, Lcom/facebook/orca/database/DbServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 527
    const-class v1, Lcom/facebook/orca/database/DbThreadsPropertyUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbThreadsPropertyUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbThreadsPropertyUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 529
    const-class v1, Lcom/facebook/orca/database/DbUsersPropertyUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DbUsersPropertyUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DbUsersPropertyUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 531
    const-class v1, Lcom/facebook/orca/debug/ErrorReportSender;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ErrorReportSenderProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ErrorReportSenderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 533
    const-class v1, Lcom/facebook/orca/debug/MemoryUsageDumper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MemoryUsageDumperProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MemoryUsageDumperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 535
    const-class v1, Lcom/facebook/orca/images/FetchImageDeferrable;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchImageDeferrableProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchImageDeferrableProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 537
    const-class v1, Lcom/facebook/orca/images/FetchImageTask;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchImageTaskProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchImageTaskProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 539
    const-class v1, Lcom/facebook/orca/images/ImageScalingUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ImageScalingUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ImageScalingUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 541
    const-class v1, Lcom/facebook/orca/images/ImageSearchHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ImageSearchHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ImageSearchHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 543
    const-class v1, Lcom/facebook/orca/images/ImageSearchListAdapter;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ImageSearchListAdapterProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ImageSearchListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 545
    const-class v1, Lcom/facebook/orca/location/LocateUserDeferrable;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$LocationAsyncTaskProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$LocationAsyncTaskProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 547
    const-class v1, Lcom/facebook/orca/location/LocationServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$LocationServiceHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$LocationServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 549
    const-class v1, Lcom/facebook/orca/location/GeocodingDeferrable;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$GeocodingDeferrableProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 551
    const-class v1, Lcom/facebook/orca/location/GeocodingForMessageLocationDeferrable;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationDeferrableProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$GeocodingForMessageLocationDeferrableProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 553
    const-class v1, Lcom/facebook/orca/notify/NotificationSettingsUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$NotificationSettingsUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$NotificationSettingsUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 555
    const-class v1, Lcom/facebook/orca/photos/picking/OldPhotoCleaner;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OldPhotoCleanerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OldPhotoCleanerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 557
    const-class v1, Lcom/facebook/orca/photos/sizing/GraphicSizerFactory;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$GraphicSizerFactoryProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$GraphicSizerFactoryProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 559
    const-class v1, Lcom/facebook/orca/photos/tiles/DefaultTilesCache;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DefaultTilesCacheProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DefaultTilesCacheProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 562
    const-class v1, Lcom/facebook/orca/photos/tiles/UserTileViewLogic;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$UserTileViewLogicProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 565
    const-class v1, Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$AddMembersMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$AddMembersMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 567
    const-class v1, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$AuthenticateSsoMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$AuthenticateSsoMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 569
    const-class v1, Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$CreateThreadMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$CreateThreadMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 571
    const-class v1, Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchAppConfigMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchAppConfigMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 573
    const-class v1, Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchMoreMessagesMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchMoreMessagesMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 575
    const-class v1, Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchMessageMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchMessageMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 577
    const-class v1, Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchMoreThreadsMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchMoreThreadsMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 579
    const-class v1, Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchThreadMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchThreadMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 581
    const-class v1, Lcom/facebook/orca/protocol/methods/FetchThreadsFqlHelper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchThreadsFqlHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 583
    const-class v1, Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchThreadListMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchThreadListMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 585
    const-class v1, Lcom/facebook/orca/protocol/methods/GetFriendsMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$GetFriendsMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$GetFriendsMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 587
    const-class v1, Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$GetMeUserMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$GetMeUserMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 589
    const-class v1, Lcom/facebook/orca/protocol/methods/MessageDeserializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessageDeserializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 591
    const-class v1, Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$RemoveMemberMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$RemoveMemberMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 593
    const-class v1, Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SendMessageMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SendMessageMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 595
    const-class v1, Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FetchRolloutsMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FetchRolloutsMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 597
    const-class v1, Lcom/facebook/orca/protocol/methods/SendMessageParameterHelper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SendMessageParameterHelperProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SendMessageParameterHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 599
    const-class v1, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SendViaChatHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 601
    const-class v1, Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SetThreadImageMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SetThreadImageMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 603
    const-class v1, Lcom/facebook/orca/protocol/methods/ThreadSummaryDeserializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadSummaryDeserializerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadSummaryDeserializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 605
    const-class v1, Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$UploadPhotoMethodProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$UploadPhotoMethodProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 607
    const-class v1, Lcom/facebook/orca/protocol/WebServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$WebServiceHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$WebServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 609
    const-class v1, Lcom/facebook/orca/push/common/PushDeserialization;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$PushDeserializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 611
    const-class v1, Lcom/facebook/orca/mqtt/serialization/MessageDecoder;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessageDecoderProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessageDecoderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 613
    const-class v1, Lcom/facebook/orca/server/PreProcessingServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$PreProcessingServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 615
    const-class v1, Lcom/facebook/orca/tabs/TabIndicatorViewFactory;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$TabIndicatorViewFactoryProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$TabIndicatorViewFactoryProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 617
    const-class v1, Lcom/facebook/orca/threadlist/ThreadChooserDialog;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadChooserDialogProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadChooserDialogProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 619
    const-class v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 621
    const-class v1, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadDateUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->c()V

    .line 624
    const-class v1, Lcom/facebook/orca/threads/ThreadSourceUtil;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadSourceUtilProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadSourceUtilProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 626
    const-class v1, Lcom/facebook/orca/threadview/MessageListAdapter;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessageListAdapterProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessageListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 628
    const-class v1, Lcom/facebook/orca/threadview/ThreadMemberListAdapter;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadMemberListAdapterProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadMemberListAdapterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 630
    const-class v1, Lcom/facebook/orca/users/AddressBookServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$AddressBookServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 632
    const-class v1, Lcom/facebook/orca/users/FacebookUserIterator;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FacebookUserIteratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 634
    const-class v1, Lcom/facebook/orca/users/MergeAddressBookHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MergeAddressBookHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MergeAddressBookHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 636
    const-class v1, Lcom/facebook/orca/users/PhoneUserIterator;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$PhoneUserIteratorProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 638
    const-class v1, Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$UserSerializationProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$UserSerializationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 640
    const-class v1, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerHookProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$AddressBookPeriodicRunnerHookProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 642
    const-class v1, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerQueueHookProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$BackgroundRefreshRunnerQueueHookProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 644
    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 646
    const-class v1, Lcom/facebook/orca/ops/OrcaServiceOperation;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/FromApplication;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationForAppProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaServiceOperationForAppProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 649
    const-class v1, Lcom/facebook/orca/auth/FacebookCredentials;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$FacebookCredentialsProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$FacebookCredentialsProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 651
    const-class v1, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaHttpConfigProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaHttpConfigProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 653
    const-class v1, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/config/OrcaHttpConfig;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 655
    const-class v1, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/ProductionPlatformAppHttpConfig;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ProductionPlatformAppHttpConfigProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ProductionPlatformAppHttpConfigProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 658
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/AuthTokenString;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$AuthTokenStringProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 661
    const-class v1, Lcom/facebook/orca/config/MqttConfig;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaMqttConfigProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaMqttConfigProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 663
    const-class v1, Lcom/facebook/orca/threads/MessagesUiReorderer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessagesUiReordererProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessagesUiReordererProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 665
    const-class v1, Lcom/facebook/orca/users/User;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/MeUser;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MeUserProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MeUserProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 668
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/MeUserId;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MeUserIdProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MeUserIdProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 671
    const-class v1, Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/annotations/IsMeUserAnEmployee;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/users/IsMeUserAnEmployeeProvider;

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/LinkedBindingBuilder;->c(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 674
    const-class v1, Lcom/facebook/orca/debug/LogReportSender;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$LogReportSenderProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$LogReportSenderProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 676
    const-class v1, Lcom/facebook/orca/merge/MergeServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MergeServiceHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MergeServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 678
    const-class v1, Lcom/facebook/orca/dispatch/DispatchServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$DispatchServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 680
    const-class v1, Lcom/facebook/orca/threads/ThreadsCollectionMerger;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadsCollectionMergerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadsCollectionMergerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 682
    const-class v1, Lcom/facebook/orca/sms/MmsSmsServiceHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MmsSmsServiceHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MmsSmsServiceHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 684
    const-class v1, Lcom/facebook/orca/sms/SmsFetchThreadsHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SmsFetchThreadsHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SmsFetchThreadsHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 686
    const-class v1, Lcom/facebook/orca/sms/SmsFetchThreadHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SmsFetchThreadHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SmsFetchThreadHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 688
    const-class v1, Lcom/facebook/orca/sms/SmsContentResolverHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SmsContentResolverHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SmsContentResolverHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 690
    const-class v1, Lcom/facebook/orca/sms/SmsSendMessageHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$SmsSendMessageHandlerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 692
    const-class v1, Lcom/facebook/orca/threadview/CanonicalThreadPresenceHelper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$CanonicalThreadPresenceHelperProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$CanonicalThreadPresenceHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 694
    const-class v1, Lcom/facebook/orca/threadview/ThreadViewTitleHelper;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadViewTitleHelperProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadViewTitleHelperProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 696
    const-class v1, Lcom/facebook/orca/threads/ThreadSummaryStitching;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$ThreadSummaryStitchingProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$ThreadSummaryStitchingProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 699
    const-class v1, Lcom/facebook/orca/push/mqtt/MqttPushServiceManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MqttPushServiceManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MqttPushServiceManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 702
    const-class v1, Lcom/facebook/orca/push/mqtt/PushStateBroadcaster;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$PushStateBroadcasterProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$PushStateBroadcasterProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 704
    const-class v1, Lcom/facebook/orca/auth/UserTokenCredentials;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$UserCredentialsProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$UserCredentialsProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 707
    const-class v1, Lcom/facebook/orca/rollout/OrcaRolloutManager;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaRolloutManagerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaRolloutManagerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 711
    const-class v1, Lcom/facebook/orca/app/FbAppInitializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$OrcaInitializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 713
    const-class v1, Lcom/facebook/orca/app/MessagesDataInitLock;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessagesDataInitLockProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessagesDataInitLockProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;->a()V

    .line 716
    const-class v1, Lcom/facebook/orca/app/MessagesDatabasesReadyInitializer;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;

    move-result-object v1

    new-instance v2, Lcom/facebook/orca/app/MessagesModule$MessagesDatabasesReadyInitializerProvider;

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/app/MessagesModule$MessagesDatabasesReadyInitializerProvider;-><init>(Lcom/facebook/orca/app/MessagesModule;B)V

    invoke-interface {v1, v2}, Lcom/facebook/orca/inject/binder/AnnotatedBindingBuilder;->a(Ljavax/inject/Provider;)Lcom/facebook/orca/inject/binder/ScopedBindingBuilder;

    .line 720
    const-class v1, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/app/OrcaServiceHandlerHookForApp;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 722
    const-class v1, Lcom/facebook/orca/server/OrcaServiceHandlerHook;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/database/AddressBookPeriodicRunner$Hook;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 724
    const-class v1, Lcom/facebook/orca/server/OrcaServiceQueueHook;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/server/BackgroundRefreshRunner$QueueHook;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 726
    const-class v1, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/presence/PresenceManager$MyActivityListener;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 728
    const-class v1, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/notify/OrcaForegroundActivityListener;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 730
    const-class v1, Lcom/facebook/orca/activity/FbActivityListener;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/notify/InAppNotificationController$MyActivityListener;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 732
    const-class v1, Lcom/facebook/orca/push/PushHandler;

    invoke-virtual {p0, v1}, Lcom/facebook/orca/app/MessagesModule;->b(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    move-result-object v1

    const-class v2, Lcom/facebook/orca/push/MessengerPushHandler;

    invoke-virtual {v1, v2}, Lcom/facebook/orca/inject/MultiBinding;->a(Ljava/lang/Class;)Lcom/facebook/orca/inject/MultiBinding;

    .line 735
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 736
    return-void
.end method

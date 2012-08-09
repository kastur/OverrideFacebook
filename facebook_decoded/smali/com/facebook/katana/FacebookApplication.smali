.class public Lcom/facebook/katana/FacebookApplication;
.super Landroid/app/Application;
.source "FacebookApplication.java"

# interfaces
.implements Lcom/facebook/orca/inject/FbInjectorProvider;


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formKey = ""
.end annotation


# static fields
.field private static a:J

.field private static d:Ljava/lang/String;


# instance fields
.field private b:Lcom/facebook/orca/inject/FbInjector;

.field private c:Lcom/facebook/katana/util/logging/PerformanceMarker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/facebook/katana/FacebookApplication;->a:J

    .line 55
    const-class v0, Lcom/facebook/katana/FacebookApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/FacebookApplication;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private static c()V
    .locals 3

    .prologue
    .line 119
    sget-object v0, Lcom/facebook/katana/FacebookApplication;->d:Ljava/lang/String;

    const-string v1, "Forcing initialization of AsyncTask"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    sget-object v1, Lcom/facebook/katana/FacebookApplication;->d:Ljava/lang/String;

    const-string v2, "Exception trying to initialize AsyncTask"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/inject/FbInjector;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/katana/FacebookApplication;->b:Lcom/facebook/orca/inject/FbInjector;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/katana/FacebookApplication;->c:Lcom/facebook/katana/util/logging/PerformanceMarker;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/facebook/katana/FacebookApplication;->c:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->b(Landroid/content/Context;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/FacebookApplication;->c:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 141
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 59
    invoke-static {}, Lcom/facebook/katana/FacebookApplication;->c()V

    .line 60
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 61
    invoke-static {p0}, Lcom/facebook/katana/service/method/ApiLogging;->a(Landroid/content/Context;)V

    .line 62
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v1

    new-instance v2, Lorg/acra/sender/HttpPostSender;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/acra/sender/HttpPostSender;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    .line 64
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {}, Lorg/acra/ErrorReporter;->getInstance()Lorg/acra/ErrorReporter;

    move-result-object v0

    sget-wide v1, Lcom/facebook/katana/FacebookApplication;->a:J

    invoke-virtual {v0, v1, v2}, Lorg/acra/ErrorReporter;->setMaxReportSize(J)V

    .line 67
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 69
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->a(I)V

    .line 70
    new-instance v0, Lcom/facebook/orca/inject/ContextScope;

    invoke-direct {v0}, Lcom/facebook/orca/inject/ContextScope;-><init>()V

    .line 72
    new-instance v1, Lcom/facebook/orca/app/FbBaseModule;

    invoke-direct {v1, p0, v0}, Lcom/facebook/orca/app/FbBaseModule;-><init>(Landroid/content/Context;Lcom/facebook/orca/inject/ContextScope;)V

    .line 73
    new-instance v2, Lcom/facebook/katana/orca/FbandroidAppModule;

    invoke-direct {v2, p0, v0}, Lcom/facebook/katana/orca/FbandroidAppModule;-><init>(Landroid/app/Application;Lcom/facebook/orca/inject/ContextScope;)V

    .line 75
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lcom/facebook/orca/app/MessagesModule;

    invoke-direct {v1, p0}, Lcom/facebook/orca/app/MessagesModule;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Lcom/facebook/orca/analytics/AnalyticsModule;

    invoke-direct {v1, p0}, Lcom/facebook/orca/analytics/AnalyticsModule;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v1, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;

    invoke-direct {v1, p0}, Lcom/facebook/orca/analytics/OrcaAnalyticsModule;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v1, Lcom/facebook/contacts/data/ContactsModule;

    invoke-direct {v1}, Lcom/facebook/contacts/data/ContactsModule;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/facebook/orca/common/http/OrcaHttpModule;

    invoke-direct {v1, p0}, Lcom/facebook/orca/common/http/OrcaHttpModule;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;

    invoke-direct {v1, p0}, Lcom/facebook/katana/orca/FbandroidMessengerAppModule;-><init>(Landroid/app/Application;)V

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/facebook/katana/Constants;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-static {}, Lcom/facebook/katana/util/StrictModeSettings;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    new-instance v1, Lcom/facebook/katana/util/StrictModeSettings;

    invoke-direct {v1}, Lcom/facebook/katana/util/StrictModeSettings;-><init>()V

    .line 95
    invoke-virtual {v1, p0}, Lcom/facebook/katana/util/StrictModeSettings;->a(Landroid/content/Context;)V

    .line 99
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v1, Lcom/facebook/katana/service/vault/VaultModule;

    invoke-direct {v1, p0}, Lcom/facebook/katana/service/vault/VaultModule;-><init>(Landroid/app/Application;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/util/List;)Lcom/facebook/orca/inject/FbInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/FacebookApplication;->b:Lcom/facebook/orca/inject/FbInjector;

    .line 104
    iget-object v0, p0, Lcom/facebook/katana/FacebookApplication;->b:Lcom/facebook/orca/inject/FbInjector;

    const-class v1, Lcom/facebook/orca/app/FbAppInitializer;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/app/FbAppInitializer;

    invoke-virtual {v0}, Lcom/facebook/orca/app/FbAppInitializer;->a()V

    .line 105
    const-class v0, Lcom/google/common/base/FinalizableReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 107
    invoke-static {}, Lcom/facebook/katana/util/logging/MobileEventLogger;->a()Lcom/facebook/katana/util/logging/MobileEventLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/katana/FacebookApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/MobileEventLogger;->d(Landroid/content/Context;)V

    .line 108
    invoke-virtual {p0}, Lcom/facebook/katana/FacebookApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/util/logging/DataLogger;->a(Landroid/content/Context;)V

    .line 111
    new-instance v0, Lcom/facebook/katana/util/logging/PerformanceMarker;

    sget-object v1, Lcom/facebook/katana/FacebookApplication;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/katana/util/logging/PerformanceMarker;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/FacebookApplication;->c:Lcom/facebook/katana/util/logging/PerformanceMarker;

    .line 112
    iget-object v0, p0, Lcom/facebook/katana/FacebookApplication;->c:Lcom/facebook/katana/util/logging/PerformanceMarker;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/PerformanceMarker;->a(Landroid/content/Context;)V

    .line 113
    return-void
.end method

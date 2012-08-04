.class public Lcom/facebook/katana/util/logging/InteractionLogger;
.super Ljava/lang/Object;
.source "InteractionLogger.java"


# instance fields
.field private a:Lcom/facebook/orca/analytics/AnalyticsLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/facebook/katana/util/logging/LoggerUtils;->a(Landroid/content/Context;)Lcom/facebook/orca/analytics/AnalyticsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/util/logging/InteractionLogger;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    .line 39
    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter

    .prologue
    .line 151
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "hide_module"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "dest_module"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 144
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "show_module"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "dest_module"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    const-string v1, "is_modal"

    invoke-virtual {v0, v1, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/util/logging/InteractionLogger;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/katana/util/logging/InteractionLogger;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->c()V

    .line 110
    return-void
.end method

.method public final a(Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    const-string v1, "content"

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "flags"

    invoke-virtual {p1}, Lcom/facebook/katana/util/logging/InteractionLogger$ContentFlags;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->a(Ljava/lang/String;I)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    .line 83
    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {v0, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 87
    :cond_0
    if-eqz p3, :cond_1

    .line 88
    invoke-virtual {v0, p3}, Lcom/facebook/orca/analytics/HoneyClientEvent;->f(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 91
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 92
    return-void
.end method

.method public final a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/InteractionLogger;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/facebook/katana/util/logging/InteractionLogger;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 52
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    invoke-static {p1}, Lcom/facebook/katana/util/logging/InteractionLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 125
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Lcom/facebook/orca/analytics/HoneyClientEvent;

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 69
    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/orca/analytics/HoneyClientEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {v0, p2}, Lcom/facebook/orca/analytics/HoneyClientEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 75
    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 76
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-static {p1, p2}, Lcom/facebook/katana/util/logging/InteractionLogger;->c(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 103
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/util/logging/InteractionLogger;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0}, Lcom/facebook/orca/analytics/AnalyticsLogger;->d()V

    .line 118
    return-void
.end method

.method public final b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/facebook/katana/util/logging/InteractionLogger;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/util/logging/InteractionLogger;->a:Lcom/facebook/orca/analytics/AnalyticsLogger;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/analytics/AnalyticsLogger;->a(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 62
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    invoke-static {p1}, Lcom/facebook/katana/util/logging/InteractionLogger;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 140
    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-static {p1, p2}, Lcom/facebook/katana/util/logging/InteractionLogger;->c(Ljava/lang/String;Z)Lcom/facebook/orca/analytics/HoneyClientEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/logging/InteractionLogger;->b(Lcom/facebook/orca/analytics/HoneyAnalyticsEvent;)V

    .line 133
    return-void
.end method

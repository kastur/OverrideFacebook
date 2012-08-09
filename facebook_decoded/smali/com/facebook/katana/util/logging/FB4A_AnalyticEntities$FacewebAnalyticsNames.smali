.class Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;
.super Ljava/lang/Object;
.source "FB4A_AnalyticEntities.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FWAnalyticNameMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "fb://"

    .line 106
    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->b:Ljava/util/List;

    .line 116
    const-string v0, "fb://feed"

    const-string v1, "newsfeed"

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "fb://events"

    const-string v1, "events_view"

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "fb://event"

    const-string v1, "event_view"

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "fb://profile"

    const-string v1, "timeline"

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "fb://group"

    const-string v1, "group_view"

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "fb://story"

    const-string v1, "story_view"

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "fb://page"

    const-string v1, "page_view"

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "fb://account_settings"

    const-string v1, "account_settings_main"

    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 137
    new-instance v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FWAnalyticNameMapping;

    invoke-direct {v0, p1, p2}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FWAnalyticNameMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FWAnalyticNameMapping;

    .line 128
    iget-object v2, v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FWAnalyticNameMapping;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v0, v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FWAnalyticNameMapping;->b:Ljava/lang/String;

    .line 133
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

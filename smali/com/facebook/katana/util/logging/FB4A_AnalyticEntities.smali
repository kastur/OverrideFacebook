.class public Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;
.super Ljava/lang/Object;
.source "FB4A_AnalyticEntities.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field private static v:Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "newsfeed"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->a:Ljava/lang/String;

    .line 22
    const-string v0, "connection_error_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->b:Ljava/lang/String;

    .line 24
    const-string v0, "login_screen"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->c:Ljava/lang/String;

    .line 25
    const-string v0, "nearby_activity_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->d:Ljava/lang/String;

    .line 26
    const-string v0, "photos_albums_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->e:Ljava/lang/String;

    .line 27
    const-string v0, "photos_album"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->f:Ljava/lang/String;

    .line 28
    const-string v0, "app_settings"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->g:Ljava/lang/String;

    .line 29
    const-string v0, "composer"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->h:Ljava/lang/String;

    .line 30
    const-string v0, "friends_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->i:Ljava/lang/String;

    .line 31
    const-string v0, "pages_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->j:Ljava/lang/String;

    .line 32
    const-string v0, "camera"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->k:Ljava/lang/String;

    .line 34
    const-string v0, "photo_tag_friends"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->l:Ljava/lang/String;

    .line 35
    const-string v0, "tag_places_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->m:Ljava/lang/String;

    .line 36
    const-string v0, "add_location_module"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->n:Ljava/lang/String;

    .line 37
    const-string v0, "add_location_category_module"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->o:Ljava/lang/String;

    .line 38
    const-string v0, "photo_viewer"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->p:Ljava/lang/String;

    .line 39
    const-string v0, "select_friends_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->q:Ljava/lang/String;

    .line 40
    const-string v0, "notifications_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->r:Ljava/lang/String;

    .line 41
    const-string v0, "event_edit_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->s:Ljava/lang/String;

    .line 42
    const-string v0, "users_and_pages_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->t:Ljava/lang/String;

    .line 44
    const-string v0, "faceweb_view"

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->u:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;

    invoke-direct {v0}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;-><init>()V

    sput-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->v:Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 148
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities;->v:Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$FacewebAnalyticsNames;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

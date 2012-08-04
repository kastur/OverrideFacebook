.class public Lcom/facebook/katana/model/FacebookNotifications;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookNotifications.java"


# static fields
.field private static final MOST_RECENT_EVENT_KEY:Ljava/lang/String; = "MOST_RECENT_EVENT"

.field private static final MOST_RECENT_GROUP_KEY:Ljava/lang/String; = "MOST_RECENT_GROUP"

.field private static final MOST_RECENT_REQUEST_KEY:Ljava/lang/String; = "MOST_RECENT_REQUEST"

.field private static final UNREAD:Ljava/lang/String; = "unread"

.field private static final UNSEEN:Ljava/lang/String; = "unseen"

.field private static mMostRecentEventInviteId:J

.field private static mMostRecentFriendRequestId:J

.field private static mMostRecentGroupInviteId:J


# instance fields
.field private mEventInvites:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Ljava/lang/Long;
        }
        jsonFieldName = "event_invites"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendRequests:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Ljava/lang/Long;
        }
        jsonFieldName = "friend_requests"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupInvites:Ljava/util/List;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ListType;
        a = {
            Ljava/lang/Long;
        }
        jsonFieldName = "group_invites"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMessagesCounts:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "messages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationsCounts:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "notification_counts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPokesCounts:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "pokes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestsCounts:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "friend_requests_counts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharesCounts:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "shares"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 28
    sput-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentGroupInviteId:J

    .line 29
    sput-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentFriendRequestId:J

    .line 30
    sput-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentEventInviteId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mMessagesCounts:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mPokesCounts:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mSharesCounts:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mRequestsCounts:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mNotificationsCounts:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mFriendRequests:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mGroupInvites:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mEventInvites:Ljava/util/List;

    .line 71
    return-void
.end method

.method private static a(Ljava/util/List;J)Ljava/util/List;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 94
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 95
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 97
    :cond_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    const-string v0, "MOST_RECENT_GROUP"

    invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentGroupInviteId:J

    .line 231
    const-string v0, "MOST_RECENT_EVENT"

    invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentEventInviteId:J

    .line 232
    const-string v0, "MOST_RECENT_REQUEST"

    invoke-static {p0, v0}, Lcom/facebook/katana/provider/UserValuesManager;->d(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentFriendRequestId:J

    .line 234
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 243
    const-string v0, "MOST_RECENT_GROUP"

    sget-wide v1, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentGroupInviteId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    const-string v0, "MOST_RECENT_EVENT"

    sget-wide v1, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentEventInviteId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    const-string v0, "MOST_RECENT_REQUEST"

    sget-wide v1, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentFriendRequestId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 247
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 217
    sget-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentGroupInviteId:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentEventInviteId:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentFriendRequestId:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 219
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/model/FacebookNotifications;->b(Landroid/content/Context;)V

    .line 221
    :cond_1
    return-void
.end method

.method private i()I
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mPokesCounts:Ljava/util/Map;

    const-string v1, "unread"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/Utils;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-static {p1}, Lcom/facebook/katana/model/FacebookNotifications;->d(Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mFriendRequests:Ljava/util/List;

    sget-wide v1, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentFriendRequestId:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/model/FacebookNotifications;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mFriendRequests:Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mGroupInvites:Ljava/util/List;

    sget-wide v1, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentGroupInviteId:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/model/FacebookNotifications;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mGroupInvites:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mEventInvites:Ljava/util/List;

    sget-wide v1, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentEventInviteId:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/model/FacebookNotifications;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mEventInvites:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mFriendRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mFriendRequests:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    sput-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentFriendRequestId:J

    .line 83
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mGroupInvites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mGroupInvites:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    sput-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentGroupInviteId:J

    .line 85
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mEventInvites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mEventInvites:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_2
    sput-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentEventInviteId:J

    .line 87
    return-void

    .line 81
    :cond_0
    sget-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentFriendRequestId:J

    goto :goto_0

    .line 83
    :cond_1
    sget-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentGroupInviteId:J

    goto :goto_1

    .line 85
    :cond_2
    sget-wide v0, Lcom/facebook/katana/model/FacebookNotifications;->mMostRecentEventInviteId:J

    goto :goto_2
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mRequestsCounts:Ljava/util/Map;

    const-string v1, "unseen"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/Utils;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mNotificationsCounts:Ljava/util/Map;

    const-string v1, "unseen"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/Utils;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public final d()I
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mMessagesCounts:Ljava/util/Map;

    const-string v1, "unseen"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/util/Utils;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 155
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookNotifications;->mRequestsCounts:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mRequestsCounts:Ljava/util/Map;

    .line 156
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mRequestsCounts:Ljava/util/Map;

    const-string v1, "unseen"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 164
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookNotifications;->mNotificationsCounts:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mNotificationsCounts:Ljava/util/Map;

    .line 165
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mNotificationsCounts:Ljava/util/Map;

    const-string v1, "unseen"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 173
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookNotifications;->mMessagesCounts:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mMessagesCounts:Ljava/util/Map;

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mMessagesCounts:Ljava/util/Map;

    const-string v1, "unseen"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookNotifications;->i()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mFriendRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookNotifications;->mEventInvites:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookNotifications;->c()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

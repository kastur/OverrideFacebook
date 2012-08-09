.class public Lcom/facebook/katana/model/Bookmark;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "Bookmark.java"


# static fields
.field public static final DEFAULT_PROFILE_BOOKMARK_ICON_PATH:Ljava/lang/String; = "/images/icons/friend_guy.png"

.field public static final FB_ACCOUNT_ACTION_SHEET:Ljava/lang/String; = "fb://account_action_sheet"


# instance fields
.field public count:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "count"
    .end annotation
.end field

.field public final icon:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "icon"
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "id"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field public final pic:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "pic"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "type"
    .end annotation
.end field

.field public final url:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "url"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 44
    iput-object v2, p0, Lcom/facebook/katana/model/Bookmark;->id:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Lcom/facebook/katana/model/Bookmark;->name:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/model/Bookmark;->count:J

    .line 48
    iput-object v2, p0, Lcom/facebook/katana/model/Bookmark;->icon:Ljava/lang/String;

    .line 49
    iput-object v2, p0, Lcom/facebook/katana/model/Bookmark;->pic:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/facebook/katana/model/Bookmark;->type:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/facebook/katana/model/Bookmark;->id:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/facebook/katana/model/Bookmark;->name:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/facebook/katana/model/Bookmark;->url:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/katana/model/Bookmark;->count:J

    .line 60
    iput-object p6, p0, Lcom/facebook/katana/model/Bookmark;->icon:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/facebook/katana/model/Bookmark;->pic:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lcom/facebook/katana/model/Bookmark;->type:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;
    .locals 9
    .parameter

    .prologue
    .line 74
    const v0, 0x7f0b01a0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookSessionInfo;->b()Lcom/facebook/katana/model/FacebookUser;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 80
    iget-object v0, v1, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    move-object v2, v0

    .line 84
    :goto_0
    new-instance v0, Lcom/facebook/katana/model/Bookmark;

    const-string v1, "-1"

    const-string v3, "fb://profile/"

    const-wide/16 v4, 0x0

    const-string v6, "/images/icons/friend_guy.png"

    const-string v7, "http://www.facebook.com/images/m/faceweb/ios/profileButton.png"

    const-string v8, "profile"

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    move-object v2, v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;
    .locals 9
    .parameter

    .prologue
    .line 91
    new-instance v0, Lcom/facebook/katana/model/Bookmark;

    const-string v1, "-1"

    const v2, 0x7f0b019a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fb://feed/"

    const-wide/16 v4, 0x0

    const-string v6, "http://www.facebook.com/images/icons/newsfeed.png"

    const-string v7, "http://www.facebook.com/images/m/faceweb/ios/feedButton.png"

    const-string v8, "app"

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;
    .locals 9
    .parameter

    .prologue
    .line 99
    new-instance v0, Lcom/facebook/katana/model/Bookmark;

    const-string v1, "-1"

    const v2, 0x7f0b019b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fb://messaging/"

    const-wide/16 v4, 0x0

    const-string v6, "http://www.facebook.com/images/icons/messages.png"

    const-string v7, "http://www.facebook.com/images/m/faceweb/ios/inboxButton.png"

    const-string v8, "app"

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;
    .locals 9
    .parameter

    .prologue
    .line 107
    new-instance v0, Lcom/facebook/katana/model/Bookmark;

    const-string v1, "-1"

    const v2, 0x7f0b0208

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fb://online"

    const-wide/16 v4, 0x0

    const-string v6, "/images/im_online.gif"

    const-string v7, "http://www.facebook.com/images/m/faceweb/ios/chatButton.png"

    const-string v8, "app"

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;
    .locals 9
    .parameter

    .prologue
    .line 115
    new-instance v0, Lcom/facebook/katana/model/Bookmark;

    const-string v1, "-1"

    const v2, 0x7f0b019c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fb://events"

    const-wide/16 v4, 0x0

    const-string v6, "http://www.facebook.com/images/icons/event.gif"

    const-string v7, "http://www.facebook.com/images/m/faceweb/ios/eventsButton.png"

    const-string v8, "app"

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;
    .locals 9
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/facebook/katana/model/Bookmark;

    const-string v1, "-1"

    const v2, 0x7f0b019d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fb://friends/"

    const-wide/16 v4, 0x0

    const-string v6, "http://www.facebook.com/images/icons/friends.png"

    const-string v7, "http://www.facebook.com/images/m/faceweb/ios/friendsButton.png"

    const-string v8, "app"

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;
    .locals 9
    .parameter

    .prologue
    .line 131
    new-instance v0, Lcom/facebook/katana/model/Bookmark;

    const-string v1, "-1"

    const v2, 0x7f0b019e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "fb://places/"

    const-wide/16 v4, 0x0

    const-string v6, "http://www.facebook.com/images/icons/place.png"

    const-string v7, "http://www.facebook.com/images/m/faceweb/ios/placesButton.png"

    const-string v8, "app"

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;
    .locals 9
    .parameter

    .prologue
    .line 140
    new-instance v0, Lcom/facebook/katana/model/Bookmark;

    const-string v1, "-1"

    const v2, 0x7f0b0207

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fb://help"

    const-wide/16 v4, 0x0

    const-string v6, "/images/icons/help.png"

    const/4 v7, 0x0

    const-string v8, "app"

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i(Landroid/content/Context;)Lcom/facebook/katana/model/Bookmark;
    .locals 9
    .parameter

    .prologue
    .line 147
    new-instance v0, Lcom/facebook/katana/model/Bookmark;

    const-string v1, "-1"

    const v2, 0x7f0b017a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fb://account_action_sheet"

    const-wide/16 v4, 0x0

    const-string v6, "/images/icons/account.png"

    const/4 v7, 0x0

    const-string v8, "app"

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

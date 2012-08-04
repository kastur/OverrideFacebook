.class public Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;
.super Ljava/lang/Object;
.source "ContactRemoteInfoFetcher.java"


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/facebook/katana/binding/AppSession;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContactUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b:Landroid/content/Context;

    .line 86
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c:Lcom/facebook/katana/binding/AppSession;

    .line 87
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c:Lcom/facebook/katana/binding/AppSession;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->h:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->i:Ljava/util/Map;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->j:Ljava/util/List;

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->i:Ljava/util/Map;

    return-object p1
.end method

.method private b()Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;
    .locals 4

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c:Lcom/facebook/katana/binding/AppSession;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 136
    instance-of v3, v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;

    if-eqz v3, :cond_1

    .line 137
    check-cast v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;

    :goto_1
    move-object v1, v0

    goto :goto_0

    .line 140
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->h:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;-><init>(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;B)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->f:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->f:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSession;->a(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 104
    iput-object p1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->g:Ljava/util/Map;

    .line 105
    return-void
.end method

.method static synthetic d(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->h:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 116
    sget-object v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a:Ljava/lang/String;

    const-string v1, "fetch() is called"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c(Ljava/util/Map;)V

    .line 120
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/method/PhonebookLookup;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->d:Ljava/lang/String;

    .line 124
    sget-object v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a:Ljava/lang/String;

    const-string v1, "Initiated an API call - regular fetch"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    sget-object v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a:Ljava/lang/String;

    const-string v1, "API call completed"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b()Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    iget-object v1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;->c(Ljava/util/Map;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 181
    iget-object v1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c:Lcom/facebook/katana/binding/AppSession;

    iget-object v2, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/service/method/FqlUsersGetBriefInfoAndProfilePics;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;[Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->e:Ljava/lang/String;

    .line 188
    :goto_0
    return-void

    .line 184
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->j:Ljava/util/List;

    .line 186
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 153
    sget-object v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a:Ljava/lang/String;

    const-string v1, "continuousImport() is called"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c(Ljava/util/Map;)V

    .line 157
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c:Lcom/facebook/katana/binding/AppSession;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/facebook/katana/service/method/PhonebookLookup;->a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->d:Ljava/lang/String;

    .line 162
    sget-object v0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a:Ljava/lang/String;

    const-string v1, "Initiated an API call - continous import"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b()Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->j:Ljava/util/List;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$Listener;->a(Ljava/util/List;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 198
    :cond_0
    return-void
.end method

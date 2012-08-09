.class Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "ContactRemoteInfoFetcher.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;-><init>(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhonebookLookup API responded"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-static {v0}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-static {v0}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 217
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 220
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 221
    if-eqz v0, :cond_2

    .line 222
    iget-boolean v1, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->isFriend:Z

    if-nez v1, :cond_2

    .line 225
    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->userId:J

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-static {v1}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/util/Map;

    move-result-object v1

    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 228
    if-eqz v1, :cond_2

    .line 229
    iget-object v1, v1, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    .line 232
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->email:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phone:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 233
    :cond_3
    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 236
    :cond_4
    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->userId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-static {v0, v3}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;Ljava/util/Map;)Ljava/util/Map;

    .line 243
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-static {v0, v2}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;Ljava/util/Map;)Ljava/util/Map;

    .line 245
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    invoke-static {}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhonebookLookup FQL responded"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-static {v0}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->c(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-static {v0}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->d(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookUser;

    .line 261
    instance-of v1, v0, Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;

    if-eqz v1, :cond_3

    .line 262
    check-cast v0, Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;

    .line 263
    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;->mUserId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;->mDisplayName:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-static {v1}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->d(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;)Ljava/util/Map;

    move-result-object v1

    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;->mUserId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 265
    if-eqz v1, :cond_2

    .line 266
    new-instance v4, Lcom/facebook/katana/model/FacebookPhonebookContactUser;

    invoke-direct {v4, v1, v0}, Lcom/facebook/katana/model/FacebookPhonebookContactUser;-><init>(Lcom/facebook/katana/model/FacebookPhonebookContact;Lcom/facebook/katana/model/FacebookUserWithLargeProfilePic;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/katana/util/Assert;->b(Z)V

    goto :goto_1

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-static {v0, v2}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->a(Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;Ljava/util/List;)Ljava/util/List;

    .line 275
    iget-object v0, p0, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher$ContactObserverSessionListener;->a:Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;

    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/katana/service/method/ContactRemoteInfoFetcher;->b(ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

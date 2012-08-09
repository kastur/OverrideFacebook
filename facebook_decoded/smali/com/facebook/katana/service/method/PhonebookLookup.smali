.class public Lcom/facebook/katana/service/method/PhonebookLookup;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "PhonebookLookup.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ZLcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/katana/service/method/ServiceOperationListener;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    const-string v3, "POST"

    const-string v4, "phonebook.lookup"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 58
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->e:Ljava/util/Map;

    const-string v1, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->e:Ljava/util/Map;

    const-string v1, "entries"

    invoke-static {p4}, Lcom/facebook/katana/model/FacebookPhonebookContact;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->e:Ljava/util/Map;

    const-string v2, "include_non_fb"

    if-eqz p5, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->e:Ljava/util/Map;

    const-string v1, "country_code"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v1, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->e:Ljava/util/Map;

    const-string v2, "continuous_import"

    if-eqz p7, :cond_1

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->e:Ljava/util/Map;

    const-string v1, "not_for_sync"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->a:Ljava/util/List;

    .line 68
    return-void

    .line 62
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 64
    :cond_1
    const-string v0, "0"

    goto :goto_1
.end method

.method public static a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Ljava/util/List;ZLjava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/katana/binding/AppSession;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;Z",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/facebook/katana/service/method/PhonebookLookup;

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->sessionKey:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v4, p2

    move-object v6, p4

    move v7, p5

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/service/method/PhonebookLookup;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ZLcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 100
    const/16 v6, 0x3e9

    const/16 v7, 0x3fc

    move-object v3, p0

    move-object v4, p1

    move-object v5, v0

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Lcom/facebook/katana/service/method/ServiceOperation;IILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-virtual {p1}, Lcom/facebook/katana/binding/AppSession;->c()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    .line 123
    invoke-direct {p0}, Lcom/facebook/katana/service/method/PhonebookLookup;->h()Ljava/util/List;

    move-result-object v5

    move-object v1, p4

    move v2, p5

    move-object v3, p6

    move-object v4, p7

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSessionListener;->b(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V

    goto :goto_0

    .line 126
    :cond_0
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    const-class v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->b(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iput-object v0, p0, Lcom/facebook/katana/service/method/PhonebookLookup;->a:Ljava/util/List;

    .line 116
    :cond_0
    return-void
.end method

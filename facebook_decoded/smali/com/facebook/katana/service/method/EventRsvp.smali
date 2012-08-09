.class public Lcom/facebook/katana/service/method/EventRsvp;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "EventRsvp.java"


# instance fields
.field private a:J

.field private f:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;JLcom/facebook/katana/model/FacebookEventFull$RsvpStatus;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    const-string v3, "POST"

    const-string v4, "events.rsvp"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 48
    iget-object v0, p0, Lcom/facebook/katana/service/method/EventRsvp;->e:Ljava/util/Map;

    const-string v1, "call_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/facebook/katana/service/method/EventRsvp;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/facebook/katana/service/method/EventRsvp;->e:Ljava/util/Map;

    const-string v1, "eid"

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/facebook/katana/service/method/EventRsvp;->e:Ljava/util/Map;

    const-string v1, "rsvp_status"

    invoke-static {p7}, Lcom/facebook/katana/model/FacebookEventFull;->a(Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iput-wide p5, p0, Lcom/facebook/katana/service/method/EventRsvp;->a:J

    .line 54
    iput-object p7, p0, Lcom/facebook/katana/service/method/EventRsvp;->f:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/EventRsvp;->g:Z

    .line 56
    return-void
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 64
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 66
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/EventRsvp;->g:Z

    .line 71
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 72
    const-string v1, "rsvp_status"

    iget-object v2, p0, Lcom/facebook/katana/service/method/EventRsvp;->f:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;->a:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v2}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    sget-object v1, Lcom/facebook/katana/provider/EventsProvider;->b:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/facebook/katana/service/method/EventRsvp;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/facebook/katana/service/method/EventRsvp;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 77
    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/facebook/katana/service/method/EventRsvp;->a:J

    return-wide v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/EventRsvp;->g:Z

    return v0
.end method

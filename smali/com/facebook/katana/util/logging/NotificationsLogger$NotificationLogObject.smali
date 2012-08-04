.class public Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
.super Ljava/lang/Object;
.source "NotificationsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

.field private c:I

.field private d:I

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->c:I

    .line 141
    return-object p0
.end method

.method public final a(J)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->e:J

    .line 151
    return-object p0
.end method

.method public final a(Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->b:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    .line 136
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public final a(Z)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->i:Z

    .line 171
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 145
    iput p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->d:I

    .line 146
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->f:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public final b(Z)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->j:Z

    .line 176
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->b:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->b:Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPushNotification$NotificationType;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->c:I

    return v0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->g:Ljava/lang/String;

    .line 161
    return-object p0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->d:I

    return v0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->h:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->e:J

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->i:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/facebook/katana/util/logging/NotificationsLogger$NotificationLogObject;->j:Z

    return v0
.end method

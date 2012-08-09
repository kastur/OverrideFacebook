.class public Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "PushReceiver.java"

# interfaces
.implements Lcom/facebook/katana/service/method/FacebookPushRegistration$RegistrationListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/katana/service/method/FacebookPushRegistration;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->b:Lcom/facebook/katana/service/method/FacebookPushRegistration;

    .line 147
    iput-object p1, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->c:Ljava/lang/String;

    .line 149
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;Ljava/lang/Object;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->e(Landroid/content/Context;)J

    move-result-wide v2

    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-virtual {p1, p0}, Lcom/facebook/katana/binding/AppSession;->b(Lcom/facebook/katana/binding/AppSessionListener;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->b:Lcom/facebook/katana/service/method/FacebookPushRegistration;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->b:Lcom/facebook/katana/service/method/FacebookPushRegistration;

    if-ne v0, p2, :cond_2

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->b:Lcom/facebook/katana/service/method/FacebookPushRegistration;

    invoke-virtual {v0}, Lcom/facebook/katana/service/method/FacebookPushRegistration;->h()Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    iget-boolean v4, v0, Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;->success:Z

    if-nez v4, :cond_4

    .line 167
    :cond_1
    const-string v0, "FB_C2DM"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to save registration id to FB server. Retry with backoff: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.facebook.katana.intent.RETRY_SEND_TOKEN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 178
    const-string v0, "failed"

    .line 183
    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/katana/c2dm/PushOperationHelper;->h(Landroid/content/Context;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/facebook/katana/util/logging/reliability/PushServerRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    .line 217
    :cond_2
    :goto_1
    return-void

    .line 180
    :cond_3
    const-string v0, "retry_regid_changed"

    goto :goto_0

    .line 190
    :cond_4
    iget-boolean v0, v0, Lcom/facebook/katana/service/method/FacebookPushRegistration$Retval;->previouslyDisabled:Z

    if-eqz v0, :cond_5

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.facebook.katana.intent.RETRY_C2DM_REG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    const-string v3, ""

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/katana/c2dm/PushOperationHelper;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 196
    iget-object v2, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    const-string v2, "invalid_token"

    iget-object v3, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/katana/c2dm/PushOperationHelper;->h(Landroid/content/Context;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/facebook/katana/util/logging/reliability/PushC2DMRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    goto :goto_1

    .line 206
    :cond_5
    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/katana/c2dm/PushOperationHelper;->c(Landroid/content/Context;)V

    .line 208
    iget-object v0, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    const-string v2, "success"

    iget-object v3, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/facebook/katana/c2dm/PushOperationHelper;->h(Landroid/content/Context;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/facebook/katana/util/logging/reliability/PushServerRegistrationClientEvent;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/collect/ImmutableMap;)Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/katana/c2dm/PushReceiver;->a(Landroid/content/Context;Lcom/facebook/katana/util/logging/reliability/ReliabilityAnalyticsClientEvent;)V

    goto :goto_1
.end method

.method public final a(Lcom/facebook/katana/service/method/FacebookPushRegistration;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/facebook/katana/c2dm/PushReceiver$FacebookPushRegistrationListener;->b:Lcom/facebook/katana/service/method/FacebookPushRegistration;

    .line 223
    return-void
.end method

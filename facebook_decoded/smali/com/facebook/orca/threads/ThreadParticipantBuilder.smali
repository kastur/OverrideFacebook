.class public Lcom/facebook/orca/threads/ThreadParticipantBuilder;
.super Ljava/lang/Object;
.source "ThreadParticipantBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/threads/ParticipantInfo;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/orca/notify/NotificationSetting;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public final a(J)Lcom/facebook/orca/threads/ThreadParticipantBuilder;
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->d:J

    .line 62
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/notify/NotificationSetting;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 53
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 35
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->b:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/ThreadParticipant;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->a:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->h()Lcom/facebook/orca/notify/NotificationSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->c:Lcom/facebook/orca/notify/NotificationSetting;

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->d:J

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadParticipant;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->e:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadParticipantBuilder;
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->e:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/facebook/orca/notify/NotificationSetting;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->c:Lcom/facebook/orca/notify/NotificationSetting;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->d:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadParticipantBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/facebook/orca/threads/ThreadParticipant;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/facebook/orca/threads/ThreadParticipant;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/ThreadParticipant;-><init>(Lcom/facebook/orca/threads/ThreadParticipantBuilder;)V

    return-object v0
.end method

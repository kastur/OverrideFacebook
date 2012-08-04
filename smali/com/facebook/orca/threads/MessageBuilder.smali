.class public Lcom/facebook/orca/threads/MessageBuilder;
.super Ljava/lang/Object;
.source "MessageBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Lcom/facebook/orca/threads/ParticipantInfo;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Lcom/facebook/orca/location/Coordinates;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Lcom/facebook/orca/threads/Message$ChannelSource;

.field private r:Lcom/facebook/orca/attachments/MediaResource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Ljava/util/List;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    .line 35
    sget-object v0, Lcom/facebook/orca/threads/Message$ChannelSource;->API:Lcom/facebook/orca/threads/Message$ChannelSource;

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 164
    iput p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->l:I

    .line 165
    return-object p0
.end method

.method public final a(J)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->c:J

    .line 84
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/attachments/MediaResource;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->r:Lcom/facebook/orca/attachments/MediaResource;

    .line 219
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/location/Coordinates;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->i:Lcom/facebook/orca/location/Coordinates;

    .line 138
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/Message$ChannelSource;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 210
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->b:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->c:J

    .line 42
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->d:J

    .line 43
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 44
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->f:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->g:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->n()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->h:J

    .line 47
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->i:Lcom/facebook/orca/location/Coordinates;

    .line 48
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    .line 50
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->p()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->l:I

    .line 51
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->q()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    .line 52
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->n:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->o:Z

    .line 54
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->p:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->v()Lcom/facebook/orca/threads/Message$ChannelSource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->r:Lcom/facebook/orca/attachments/MediaResource;

    .line 57
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 102
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->a:Ljava/lang/String;

    .line 66
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 146
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Ljava/util/List;

    .line 147
    return-object p0
.end method

.method public final a(Z)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->o:Z

    .line 192
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b(J)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->d:J

    .line 93
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->b:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    .line 156
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->c:J

    return-wide v0
.end method

.method public final c(J)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->h:J

    .line 129
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->f:Ljava/lang/String;

    .line 111
    return-object p0
.end method

.method public final c(Ljava/util/List;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/MessageBuilder;"
        }
    .end annotation

    .prologue
    .line 173
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    .line 174
    return-object p0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->d:J

    return-wide v0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->n:Ljava/lang/String;

    .line 183
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/facebook/orca/threads/MessageBuilder;
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/facebook/orca/threads/MessageBuilder;->p:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public final e()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->e:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->h:J

    return-wide v0
.end method

.method public final i()Lcom/facebook/orca/location/Coordinates;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->i:Lcom/facebook/orca/location/Coordinates;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->j:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/share/Share;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->k:Ljava/util/List;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->l:I

    return v0
.end method

.method public final m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->m:Ljava/util/List;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->o:Z

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Lcom/facebook/orca/threads/Message$ChannelSource;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->q:Lcom/facebook/orca/threads/Message$ChannelSource;

    return-object v0
.end method

.method public final r()Lcom/facebook/orca/attachments/MediaResource;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/facebook/orca/threads/MessageBuilder;->r:Lcom/facebook/orca/attachments/MediaResource;

    return-object v0
.end method

.method public final s()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lcom/facebook/orca/threads/Message;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/Message;-><init>(Lcom/facebook/orca/threads/MessageBuilder;)V

    return-object v0
.end method

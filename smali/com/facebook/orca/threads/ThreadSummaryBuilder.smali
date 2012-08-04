.class public Lcom/facebook/orca/threads/ThreadSummaryBuilder;
.super Ljava/lang/Object;
.source "ThreadSummaryBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Lcom/facebook/orca/users/UserKey;

.field private k:J

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Lcom/facebook/orca/threads/ParticipantInfo;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/net/Uri;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Lcom/facebook/orca/threads/FolderName;

.field private w:Lcom/facebook/orca/compose/MessageDraft;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    .line 27
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    .line 28
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c:J

    .line 86
    return-object p0
.end method

.method public final a(Landroid/net/Uri;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->q:Landroid/net/Uri;

    .line 222
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/compose/MessageDraft;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->w:Lcom/facebook/orca/compose/MessageDraft;

    .line 276
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->v:Lcom/facebook/orca/threads/FolderName;

    .line 267
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/ParticipantInfo;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 186
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 2
    .parameter

    .prologue
    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b:J

    .line 48
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c:J

    .line 49
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d:J

    .line 50
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    .line 52
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->z()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    .line 54
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i:Z

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->h()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j:Lcom/facebook/orca/users/UserKey;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k:J

    .line 57
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->l()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    .line 58
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->o()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 60
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r:Z

    .line 63
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s:Z

    .line 64
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t:Z

    .line 65
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->w()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u:Z

    .line 66
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->x()Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->v:Lcom/facebook/orca/threads/FolderName;

    .line 67
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->y()Lcom/facebook/orca/compose/MessageDraft;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->w:Lcom/facebook/orca/compose/MessageDraft;

    .line 68
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j:Lcom/facebook/orca/users/UserKey;

    .line 132
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    .line 141
    return-object p0
.end method

.method public final a(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i:Z

    .line 123
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->c:J

    return-wide v0
.end method

.method public final b(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d:J

    .line 95
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    .line 150
    return-object p0
.end method

.method public final b(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r:Z

    .line 231
    return-object p0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->d:J

    return-wide v0
.end method

.method public final c(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b:J

    .line 108
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public final c(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    .line 159
    return-object p0
.end method

.method public final c(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s:Z

    .line 240
    return-object p0
.end method

.method public final d(J)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k:J

    .line 168
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o:Ljava/lang/String;

    .line 195
    return-object p0
.end method

.method public final d(Ljava/util/List;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ParticipantInfo;",
            ">;)",
            "Lcom/facebook/orca/threads/ThreadSummaryBuilder;"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    .line 204
    return-object p0
.end method

.method public final d(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t:Z

    .line 249
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->b:J

    return-wide v0
.end method

.method public final e(Ljava/lang/String;)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public final e(Z)Lcom/facebook/orca/threads/ThreadSummaryBuilder;
    .locals 1
    .parameter

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u:Z

    .line 258
    return-object p0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->i:Z

    return v0
.end method

.method public final g()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->j:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->f:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threads/ThreadParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->g:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/util/List;
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
    .line 154
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->h:Ljava/util/List;

    return-object v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->k:J

    return-wide v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Lcom/facebook/orca/threads/ParticipantInfo;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->n:Lcom/facebook/orca/threads/ParticipantInfo;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/util/List;
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
    .line 199
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->l:Ljava/util/List;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->q:Landroid/net/Uri;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->r:Z

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->s:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->t:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->u:Z

    return v0
.end method

.method public final v()Lcom/facebook/orca/threads/FolderName;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->v:Lcom/facebook/orca/threads/FolderName;

    return-object v0
.end method

.method public final w()Lcom/facebook/orca/compose/MessageDraft;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/facebook/orca/threads/ThreadSummaryBuilder;->w:Lcom/facebook/orca/compose/MessageDraft;

    return-object v0
.end method

.method public final x()Lcom/facebook/orca/threads/ThreadSummary;
    .locals 1

    .prologue
    .line 280
    new-instance v0, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/ThreadSummary;-><init>(Lcom/facebook/orca/threads/ThreadSummaryBuilder;)V

    return-object v0
.end method

.class public Lcom/facebook/orca/users/UserBuilder;
.super Ljava/lang/Object;
.source "UserBuilder.java"


# annotations
.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# instance fields
.field private a:Lcom/facebook/orca/users/User$Type;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/orca/users/Name;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/facebook/orca/users/PicCropInfo;

.field private l:Ljava/lang/String;

.field private m:F

.field private n:Lcom/facebook/orca/common/util/TriState;

.field private o:Z

.field private p:Lcom/facebook/orca/users/Birthday;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lcom/facebook/orca/users/LastActive;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->c:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->d:Ljava/util/List;

    .line 29
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->n:Lcom/facebook/orca/common/util/TriState;

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/users/User$Type;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->a:Lcom/facebook/orca/users/User$Type;

    return-object v0
.end method

.method public final a(F)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 166
    iput p1, p0, Lcom/facebook/orca/users/UserBuilder;->m:F

    .line 167
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->n:Lcom/facebook/orca/common/util/TriState;

    .line 176
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/users/Birthday;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->p:Lcom/facebook/orca/users/Birthday;

    .line 193
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/users/LastActive;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->s:Lcom/facebook/orca/users/LastActive;

    .line 220
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->e:Lcom/facebook/orca/users/Name;

    .line 122
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->k:Lcom/facebook/orca/users/PicCropInfo;

    .line 149
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->a:Lcom/facebook/orca/users/User$Type;

    .line 66
    iput-object p2, p0, Lcom/facebook/orca/users/UserBuilder;->b:Ljava/lang/String;

    .line 67
    return-object p0
.end method

.method public final a(Lcom/facebook/orca/users/User;)Lcom/facebook/orca/users/UserBuilder;
    .locals 1
    .parameter

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->a:Lcom/facebook/orca/users/User$Type;

    .line 38
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->h()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->c:Ljava/util/List;

    .line 40
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->d:Ljava/util/List;

    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->d()Lcom/facebook/orca/users/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->e:Lcom/facebook/orca/users/Name;

    .line 42
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->j:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->i:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->q()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->k:Lcom/facebook/orca/users/PicCropInfo;

    .line 45
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->l:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->t()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/UserBuilder;->m:F

    .line 47
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->u()Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->n:Lcom/facebook/orca/common/util/TriState;

    .line 48
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/users/UserBuilder;->o:Z

    .line 49
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->w()Lcom/facebook/orca/users/Birthday;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->p:Lcom/facebook/orca/users/Birthday;

    .line 50
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->x()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->q:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->r:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->z()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->s:Lcom/facebook/orca/users/LastActive;

    .line 53
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->f:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;)",
            "Lcom/facebook/orca/users/UserBuilder;"
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->c:Ljava/util/List;

    .line 76
    return-object p0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/facebook/orca/users/UserBuilder;->o:Z

    .line 185
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->g:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;)",
            "Lcom/facebook/orca/users/UserBuilder;"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->d:Ljava/util/List;

    .line 85
    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->h:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->i:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->j:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->q:Ljava/lang/String;

    .line 202
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/facebook/orca/users/UserBuilder;->r:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Lcom/facebook/orca/users/Name;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->e:Lcom/facebook/orca/users/Name;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Lcom/facebook/orca/users/PicCropInfo;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->k:Lcom/facebook/orca/users/PicCropInfo;

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final m()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/facebook/orca/users/UserBuilder;->m:F

    return v0
.end method

.method public final n()Lcom/facebook/orca/common/util/TriState;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->n:Lcom/facebook/orca/common/util/TriState;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/facebook/orca/users/UserBuilder;->o:Z

    return v0
.end method

.method public final p()Lcom/facebook/orca/users/Birthday;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->p:Lcom/facebook/orca/users/Birthday;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Lcom/facebook/orca/users/LastActive;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/facebook/orca/users/UserBuilder;->s:Lcom/facebook/orca/users/LastActive;

    return-object v0
.end method

.method public final t()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/facebook/orca/users/User;

    invoke-direct {v0, p0}, Lcom/facebook/orca/users/User;-><init>(Lcom/facebook/orca/users/UserBuilder;)V

    return-object v0
.end method

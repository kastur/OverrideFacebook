.class public Lcom/facebook/orca/threadview/RowReceiptItem;
.super Lcom/facebook/orca/threadview/RowItem;
.source "RowReceiptItem.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/threads/ParticipantInfo;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:J

.field private final i:J

.field private final j:Lcom/facebook/orca/location/Coordinates;

.field private final k:Z

.field private final l:I


# direct methods
.method private constructor <init>(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowItem;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 42
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->c:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->d:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->a:Ljava/util/List;

    .line 45
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->e:Ljava/lang/String;

    .line 46
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->f:Ljava/lang/String;

    .line 47
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->g:J

    .line 48
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->h:J

    .line 49
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->i:J

    .line 50
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->j:Lcom/facebook/orca/location/Coordinates;

    .line 51
    iput-boolean v2, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->k:Z

    .line 52
    iput v2, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->l:I

    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;",
            "Lcom/facebook/orca/threadview/RowReceiptItem$Type;",
            "Lcom/facebook/orca/threads/Message;",
            "J)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/threadview/RowReceiptItem;-><init>(Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;JZI)V

    .line 76
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;JZI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;",
            "Lcom/facebook/orca/threadview/RowReceiptItem$Type;",
            "Lcom/facebook/orca/threads/Message;",
            "JZI)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowItem;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->a:Ljava/util/List;

    .line 86
    iput-object p2, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->d:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    .line 87
    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    .line 88
    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->c:Ljava/lang/String;

    .line 89
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->e:Ljava/lang/String;

    .line 90
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->f:Ljava/lang/String;

    .line 91
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->g:J

    .line 92
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->h:J

    .line 93
    iput-wide p4, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->i:J

    .line 94
    invoke-virtual {p3}, Lcom/facebook/orca/threads/Message;->j()Lcom/facebook/orca/location/Coordinates;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->j:Lcom/facebook/orca/location/Coordinates;

    .line 95
    iput-boolean p6, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->k:Z

    .line 96
    iput p7, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->l:I

    .line 97
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;ZI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;",
            "Lcom/facebook/orca/threadview/RowReceiptItem$Type;",
            "Lcom/facebook/orca/threads/Message;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 61
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/threadview/RowReceiptItem;-><init>(Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;JZI)V

    .line 68
    return-void
.end method

.method public static a(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threadview/RowReceiptItem;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    new-instance v0, Lcom/facebook/orca/threadview/RowReceiptItem;

    sget-object v1, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->SENT:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/orca/threadview/RowReceiptItem;-><init>(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;Lcom/facebook/orca/threads/Message;J)Lcom/facebook/orca/threadview/RowReceiptItem;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;",
            "Lcom/facebook/orca/threads/Message;",
            "J)",
            "Lcom/facebook/orca/threadview/RowReceiptItem;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/facebook/orca/threadview/RowReceiptItem;

    sget-object v2, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadview/RowReceiptItem;-><init>(Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;J)V

    return-object v0
.end method

.method public static a(Ljava/util/List;Lcom/facebook/orca/threads/Message;ZI)Lcom/facebook/orca/threadview/RowReceiptItem;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;",
            "Lcom/facebook/orca/threads/Message;",
            "ZI)",
            "Lcom/facebook/orca/threadview/RowReceiptItem;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/orca/threadview/RowReceiptItem;

    sget-object v2, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->GROUP_READ:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/threadview/RowReceiptItem;-><init>(Ljava/util/List;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;ZI)V

    return-object v0
.end method

.method private static a(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threads/ParticipantInfo;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ParticipantInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/threadview/RowReceiptItem;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcom/facebook/orca/threadview/RowReceiptItem;

    sget-object v1, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->DELIVERED:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/orca/threadview/RowReceiptItem;-><init>(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threadview/RowReceiptItem$Type;Lcom/facebook/orca/threads/Message;)V

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x5

    return v0
.end method

.method public final a(Lcom/facebook/orca/threadview/RowReceiptItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 216
    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v4

    .line 217
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez v4, :cond_1

    move v2, v3

    .line 232
    :cond_0
    :goto_0
    return v2

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v1, v2

    .line 226
    :goto_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 227
    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowReceiptParticipant;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threadview/RowReceiptParticipant;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/RowReceiptParticipant;->a()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/orca/threadview/RowReceiptItem;->a(Lcom/facebook/orca/threads/ParticipantInfo;Lcom/facebook/orca/threads/ParticipantInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v2, v3

    .line 232
    goto :goto_0
.end method

.method public final b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->d:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/threadview/RowReceiptParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->a:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->i:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 186
    instance-of v2, p1, Lcom/facebook/orca/threadview/RowReceiptItem;

    if-nez v2, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    check-cast p1, Lcom/facebook/orca/threadview/RowReceiptItem;

    .line 191
    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 201
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->b()Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/threadview/RowReceiptItem$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->a(Lcom/facebook/orca/threadview/RowReceiptItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 197
    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1}, Lcom/facebook/orca/threadview/RowReceiptItem;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public final f()Lcom/facebook/orca/location/Coordinates;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->j:Lcom/facebook/orca/location/Coordinates;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->k:Z

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->l:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 210
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/facebook/orca/threadview/RowReceiptItem;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 212
    return v0

    :cond_1
    move v0, v1

    .line 209
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "RowReceiptItem{, readers="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->a:Ljava/util/List;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", senderOrDeliveree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->b:Lcom/facebook/orca/threads/ParticipantInfo;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageSource=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->d:Lcom/facebook/orca/threadview/RowReceiptItem$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineThreadingId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->f:Ljava/lang/String;

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sentTimestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", receiptTimestampMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/orca/threadview/RowReceiptItem;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto/16 :goto_1

    :cond_2
    const-string v0, ""

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4
.end method

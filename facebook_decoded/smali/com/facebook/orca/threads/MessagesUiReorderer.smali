.class public Lcom/facebook/orca/threads/MessagesUiReorderer;
.super Ljava/lang/Object;
.source "MessagesUiReorderer.java"


# static fields
.field private static final a:J


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/facebook/orca/common/util/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    const-wide/16 v0, 0x1e

    sget-wide v2, Lcom/facebook/orca/common/util/TimeConstants;->b:J

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/facebook/orca/threads/MessagesUiReorderer;->a:J

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/common/util/Clock;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;",
            "Lcom/facebook/orca/common/util/Clock;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/facebook/orca/threads/MessagesUiReorderer;->b:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/facebook/orca/threads/MessagesUiReorderer;->c:Lcom/facebook/orca/common/util/Clock;

    .line 38
    return-void
.end method

.method private static a(Lcom/facebook/orca/threads/Message;)J
    .locals 4
    .parameter

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->e()J

    move-result-wide v0

    .line 116
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/orca/threads/MessagesUiReorderer;Lcom/facebook/orca/threads/Message;)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-static {p1}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Lcom/facebook/orca/threads/Message;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x8

    .line 130
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string v1, "  Before Messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {v0, p1, v2}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 138
    const-string v1, "  After Messages:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-static {v0, p2, v2}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V

    .line 141
    const-string v1, "orca:MessagesUiReorderer"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/facebook/orca/threads/MessagesCollection;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    :cond_0
    const-string v0, "    none\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    :cond_1
    return-void

    .line 148
    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->f()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 149
    invoke-virtual {p1, v0}, Lcom/facebook/orca/threads/MessagesCollection;->a(I)Lcom/facebook/orca/threads/Message;

    move-result-object v1

    .line 150
    const-string v2, "   "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/Message;)Z
    .locals 3
    .parameter

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->f()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v1

    .line 121
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesUiReorderer;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    .line 122
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

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


# virtual methods
.method public final a(Lcom/facebook/orca/threads/MessagesCollection;)Lcom/facebook/orca/threads/MessagesCollection;
    .locals 12
    .parameter

    .prologue
    .line 45
    const/4 v2, -0x1

    .line 46
    iget-object v0, p0, Lcom/facebook/orca/threads/MessagesUiReorderer;->c:Lcom/facebook/orca/common/util/Clock;

    invoke-interface {v0}, Lcom/facebook/orca/common/util/Clock;->a()J

    move-result-wide v5

    .line 47
    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 48
    const/4 v1, 0x0

    .line 49
    const/4 v0, 0x0

    move v4, v2

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 50
    invoke-virtual {v7, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 51
    invoke-direct {p0, v0}, Lcom/facebook/orca/threads/MessagesUiReorderer;->b(Lcom/facebook/orca/threads/Message;)Z

    move-result v3

    .line 52
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->c()J

    move-result-wide v8

    sub-long v8, v5, v8

    sget-wide v10, Lcom/facebook/orca/threads/MessagesUiReorderer;->a:J

    cmp-long v0, v8, v10

    if-lez v0, :cond_0

    .line 53
    const/4 v0, -0x1

    if-eq v4, v0, :cond_1

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v2, v3

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 61
    :cond_1
    const/4 v0, -0x1

    if-ne v4, v0, :cond_3

    .line 93
    :cond_2
    :goto_1
    return-object p1

    .line 68
    :cond_3
    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 70
    const/4 v2, 0x1

    move-object v3, v0

    :goto_2
    if-gt v2, v4, :cond_5

    .line 71
    invoke-virtual {v7, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 72
    invoke-static {v3}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Lcom/facebook/orca/threads/Message;)J

    move-result-wide v5

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Lcom/facebook/orca/threads/Message;)J

    move-result-wide v8

    cmp-long v3, v5, v8

    if-gez v3, :cond_4

    .line 73
    const/4 v0, 0x1

    .line 79
    :goto_3
    if-eqz v0, :cond_2

    .line 85
    invoke-static {v7}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 86
    const/4 v0, 0x0

    add-int/lit8 v2, v4, 0x1

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 87
    new-instance v2, Lcom/facebook/orca/threads/MessagesUiReorderer$BySentTimeComparator;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/orca/threads/MessagesUiReorderer$BySentTimeComparator;-><init>(Lcom/facebook/orca/threads/MessagesUiReorderer;B)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    new-instance v0, Lcom/facebook/orca/threads/MessagesCollection;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/threads/MessagesCollection;->d()Z

    move-result v3

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/orca/threads/MessagesCollection;-><init>(Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Z)V

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/threads/MessagesUiReorderer;->a(Lcom/facebook/orca/threads/MessagesCollection;Lcom/facebook/orca/threads/MessagesCollection;)V

    move-object p1, v0

    .line 93
    goto :goto_1

    .line 70
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.class public Lcom/facebook/orca/threadlist/ThreadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ThreadListAdapter.java"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field private static e:Ljava/lang/Object;


# instance fields
.field private final f:Landroid/content/Context;

.field private final g:Landroid/view/LayoutInflater;

.field private final h:Lcom/facebook/orca/cache/ArchiveThreadManager;

.field private i:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

.field private j:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

.field private k:Ljava/lang/String;

.field private l:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/cache/ArchiveThreadManager;Landroid/view/LayoutInflater;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->i:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    .line 53
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    .line 55
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Lcom/google/common/collect/ImmutableList;

    .line 56
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    .line 62
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->f:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Lcom/facebook/orca/cache/ArchiveThreadManager;

    .line 64
    iput-object p3, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    .line 65
    return-void
.end method

.method private a(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 233
    .line 234
    if-nez p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_thread_list_start_thread_button_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 236
    sget v0, Lcom/facebook/orca/R$id;->thread_list_start_thread_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    sget v1, Lcom/facebook/orca/R$string;->thread_start_thread_button:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    :cond_0
    return-object p1
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 264
    .line 265
    if-nez p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_load_more_placeholder_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 268
    :cond_0
    return-object p1
.end method

.method private a(Lcom/facebook/orca/threads/ThreadSummary;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 255
    check-cast p2, Lcom/facebook/orca/threadlist/ThreadItemView;

    .line 256
    if-nez p2, :cond_0

    .line 257
    new-instance p2, Lcom/facebook/orca/threadlist/ThreadItemView;

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->f:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;-><init>(Landroid/content/Context;)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->i:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    invoke-virtual {p2, p1, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V

    .line 260
    return-object p2
.end method

.method private a()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->i:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-ne v0, v1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b()V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c()V

    goto :goto_0
.end method

.method private b(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 243
    .line 244
    if-nez p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_thread_list_new_thread_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 246
    sget v0, Lcom/facebook/orca/R$id;->thread_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 247
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    :cond_0
    return-object p1
.end method

.method private b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 272
    .line 273
    if-nez p1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_load_more_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 276
    :cond_0
    return-object p1
.end method

.method private b(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v0}, Lcom/facebook/orca/cache/ArchiveThreadManager;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-object p1

    .line 115
    :cond_1
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 117
    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/cache/ArchiveThreadManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    .line 121
    :cond_2
    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 127
    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->h:Lcom/facebook/orca/cache/ArchiveThreadManager;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/orca/cache/ArchiveThreadManager;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 128
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3

    .line 131
    :cond_4
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private b()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    .line 98
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->notifyDataSetChanged()V

    .line 99
    return-void
.end method

.method private c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 281
    .line 282
    if-nez p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->g:Landroid/view/LayoutInflater;

    sget v1, Lcom/facebook/orca/R$layout;->orca_loading_footer:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 285
    :cond_0
    return-object p1
.end method

.method private static c(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 139
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 143
    :cond_0
    if-nez v1, :cond_1

    .line 153
    :goto_2
    return-object p0

    .line 147
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    .line 149
    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/threads/MessagingIdUtil;->h(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 150
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3

    .line 153
    :cond_3
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private c()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 104
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c(Lcom/google/common/collect/ImmutableList;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 105
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    .line 106
    return-void
.end method


# virtual methods
.method final a(Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    .line 81
    return-void
.end method

.method public final a(Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->i:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    .line 69
    return-void
.end method

.method public final a(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/threads/ThreadSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->l:Lcom/google/common/collect/ImmutableList;

    .line 85
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a()V

    .line 86
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->k:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    sget-object v2, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->NONE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->m:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE_PLACEHOLDER:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    if-ne v0, v1, :cond_1

    .line 194
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->j:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;->LOAD_MORE:Lcom/facebook/orca/threadlist/ThreadListAdapter$LoadMoreState;

    if-ne v0, v1, :cond_2

    .line 196
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_2
    sget-object v0, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Ljava/lang/Object;

    goto :goto_0

    .line 201
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 206
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 165
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 166
    const/4 v0, 0x0

    .line 178
    :goto_0
    return v0

    .line 167
    :cond_0
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 168
    const/4 v0, 0x2

    goto :goto_0

    .line 169
    :cond_1
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 170
    const/4 v0, 0x4

    goto :goto_0

    .line 171
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 172
    const/4 v0, 0x5

    goto :goto_0

    .line 173
    :cond_3
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 174
    const/4 v0, 0x6

    goto :goto_0

    .line 175
    :cond_4
    instance-of v0, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_5

    .line 176
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null item"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 216
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 217
    :cond_1
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 218
    invoke-direct {p0, p2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    .line 220
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_3
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->d:Ljava/lang/Object;

    if-ne v0, v1, :cond_4

    .line 222
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->b(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_4
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter;->e:Ljava/lang/Object;

    if-ne v0, v1, :cond_5

    .line 224
    invoke-direct {p0, p2, p3}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->c(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_5
    instance-of v1, v0, Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v1, :cond_6

    .line 226
    check-cast v0, Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v0, p2}, Lcom/facebook/orca/threadlist/ThreadListAdapter;->a(Lcom/facebook/orca/threads/ThreadSummary;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown object type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x7

    return v0
.end method

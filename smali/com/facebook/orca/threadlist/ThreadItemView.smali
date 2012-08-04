.class public Lcom/facebook/orca/threadlist/ThreadItemView;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ThreadItemView.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lcom/facebook/orca/cache/DataCache;

.field private c:Lcom/facebook/orca/cache/ThreadDisplayCache;

.field private d:Lcom/facebook/orca/threads/ThreadDateUtil;

.field private e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

.field private f:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

.field private g:Lcom/facebook/orca/photos/tiles/ThreadTileView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/facebook/orca/threads/ThreadSummary;

.field private l:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "\\n+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/threadlist/ThreadItemView;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->d()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->d()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->d()V

    .line 71
    return-void
.end method

.method private static a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 138
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<null>"

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    const v0, 0x106000d

    .line 157
    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->l:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    sget-object v2, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-ne v1, v2, :cond_1

    .line 158
    if-eqz p1, :cond_0

    sget v0, Lcom/facebook/orca/R$drawable;->orca_thread_list_item_unread_background:I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->setBackgroundResource(I)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/CharSequence;
    .locals 12
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 168
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->n()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    :goto_0
    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->m()Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->o()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/facebook/orca/cache/ThreadDisplayCache;->b(Ljava/lang/String;)Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->c()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_c

    .line 179
    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->a()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v2}, Lcom/facebook/orca/cache/ThreadDisplayCache$ThreadSnippet;->b()Lcom/facebook/orca/threads/ParticipantInfo;

    move-result-object v0

    move-object v2, v0

    move-object v0, v1

    .line 183
    :goto_1
    if-eqz v0, :cond_1

    if-nez v2, :cond_2

    .line 184
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 188
    :cond_2
    sget-object v1, Lcom/facebook/orca/threadlist/ThreadItemView;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 190
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 197
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 198
    new-instance v6, Lcom/facebook/orca/common/util/StyledStringBuilder;

    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;-><init>(Landroid/content/res/Resources;)V

    .line 199
    invoke-virtual {v2}, Lcom/facebook/orca/threads/ParticipantInfo;->e()Lcom/facebook/orca/users/UserKey;

    move-result-object v0

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v4}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 200
    sget v0, Lcom/facebook/orca/R$drawable;->orca_reply_arrow:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 201
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v0, p1}, Lcom/facebook/orca/threads/ThreadParticipantUtils;->b(Lcom/facebook/orca/threads/ThreadSummary;)Lcom/facebook/orca/threads/ThreadParticipant;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-gez v0, :cond_9

    .line 206
    sget v0, Lcom/facebook/orca/R$drawable;->orca_inbox_seen:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 221
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v0, v3, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 223
    const/16 v0, 0x21

    invoke-virtual {v6, v2, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/Object;I)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 224
    const-string v0, " "

    invoke-virtual {v6, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 225
    invoke-virtual {v6}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a()Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 226
    const-string v0, " "

    invoke-virtual {v6, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 227
    invoke-virtual {v6, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    .line 244
    :goto_4
    invoke-virtual {v6}, Lcom/facebook/orca/common/util/StyledStringBuilder;->b()Landroid/text/SpannableString;

    move-result-object v0

    goto/16 :goto_0

    .line 209
    :cond_3
    const/4 v4, 0x1

    .line 210
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->i()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipant;

    .line 211
    iget-object v8, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v8}, Lcom/facebook/orca/cache/DataCache;->b()Lcom/facebook/orca/users/UserKey;

    move-result-object v8

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->d()Lcom/facebook/orca/users/UserKey;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadParticipant;->i()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-ltz v0, :cond_4

    move v0, v3

    .line 217
    :goto_5
    if-eqz v0, :cond_9

    .line 218
    sget v0, Lcom/facebook/orca/R$drawable;->orca_inbox_seen:I

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_3

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-static {p1}, Lcom/facebook/orca/cache/ThreadDisplayCache;->c(Lcom/facebook/orca/threads/ThreadSummary;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 229
    invoke-virtual {v6, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto :goto_4

    .line 232
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;Lcom/facebook/orca/threads/ParticipantInfo;)Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_7

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto :goto_4

    .line 238
    :cond_7
    invoke-virtual {v6, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto :goto_4

    .line 241
    :cond_8
    invoke-virtual {v6, v1}, Lcom/facebook/orca/common/util/StyledStringBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/common/util/StyledStringBuilder;

    goto/16 :goto_4

    :cond_9
    move-object v0, v2

    goto/16 :goto_3

    :cond_a
    move v0, v4

    goto :goto_5

    :cond_b
    move-object v1, v0

    goto/16 :goto_2

    :cond_c
    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->b()Lcom/facebook/orca/inject/FbInjector;

    move-result-object v1

    .line 75
    const-class v0, Lcom/facebook/orca/cache/DataCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/DataCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    .line 76
    const-class v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/cache/ThreadDisplayCache;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->c:Lcom/facebook/orca/cache/ThreadDisplayCache;

    .line 77
    const-class v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadDateUtil;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->d:Lcom/facebook/orca/threads/ThreadDateUtil;

    .line 78
    const-class v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/inject/FbInjector;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/ThreadParticipantUtils;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->e:Lcom/facebook/orca/threads/ThreadParticipantUtils;

    .line 80
    sget v0, Lcom/facebook/orca/R$layout;->orca_thread_list_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(I)V

    .line 82
    sget v0, Lcom/facebook/orca/R$id;->thread_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->f:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    .line 83
    sget v0, Lcom/facebook/orca/R$id;->thread_tile_img:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/ThreadTileView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->g:Lcom/facebook/orca/photos/tiles/ThreadTileView;

    .line 84
    sget v0, Lcom/facebook/orca/R$id;->thread_last_msg:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->h:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/facebook/orca/R$id;->thread_time:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->i:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/facebook/orca/R$id;->thread_failed_icon:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Landroid/widget/ImageView;

    .line 87
    return-void
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->f:Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/common/ui/widgets/text/ThreadNameView;->setData(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->g:Lcom/facebook/orca/photos/tiles/ThreadTileView;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/photos/tiles/ThreadTileView;->setThreadSummary(Lcom/facebook/orca/threads/ThreadSummary;)V

    .line 144
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-direct {p0, v2}, Lcom/facebook/orca/threadlist/ThreadItemView;->b(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->d:Lcom/facebook/orca/threads/ThreadDateUtil;

    iget-object v3, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/ThreadSummary;->k()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/facebook/orca/threads/ThreadDateUtil;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 147
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 148
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Z)V

    .line 149
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 147
    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/facebook/orca/threads/ThreadSummary;Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->l:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-eq p2, v0, :cond_1

    .line 111
    :cond_0
    const-string v0, "orca:ThreadItemView"

    const-string v1, "addThreadToThreadList (%s to %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-static {v4}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Lcom/facebook/orca/threads/ThreadSummary;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/orca/debug/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iput-object p1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    .line 114
    iput-object p2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->l:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    .line 115
    invoke-direct {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->e()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/orca/threadlist/ThreadItemView;->c()V

    goto :goto_0
.end method

.method final c()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->l:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    sget-object v1, Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;->NORMAL:Lcom/facebook/orca/threadlist/ThreadListAdapter$Mode;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->b:Lcom/facebook/orca/cache/DataCache;

    iget-object v1, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v1}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/cache/DataCache;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 132
    iget-object v2, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v2}, Lcom/facebook/orca/threads/ThreadSummary;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    .line 133
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/threadlist/ThreadItemView;->a(Z)V

    .line 135
    :cond_0
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ThreadItemView.onLayout ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 101
    invoke-super/range {p0 .. p5}, Lcom/facebook/orca/activity/CustomViewGroup;->onLayout(ZIIII)V

    .line 102
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 103
    return-void

    .line 99
    :cond_0
    const-string v0, "<none>"

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threadlist/ThreadItemView;->k:Lcom/facebook/orca/threads/ThreadSummary;

    invoke-virtual {v0}, Lcom/facebook/orca/threads/ThreadSummary;->a()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ThreadItemView.onMeasure ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v0

    .line 93
    invoke-super {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;->onMeasure(II)V

    .line 94
    invoke-virtual {v0}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 95
    return-void

    .line 91
    :cond_0
    const-string v0, "<none>"

    goto :goto_0
.end method

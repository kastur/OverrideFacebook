.class Lcom/facebook/katana/RequestsAdapter$FriendRequest;
.super Ljava/lang/Object;
.source "RequestsAdapter.java"


# instance fields
.field a:Lcom/facebook/katana/model/FacebookUser;

.field b:I

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/view/View;

.field final synthetic e:Lcom/facebook/katana/RequestsAdapter;

.field private f:Lcom/facebook/katana/RequestsAdapter$RequestState;


# direct methods
.method constructor <init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/model/FacebookUser;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->e:Lcom/facebook/katana/RequestsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    sget-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    iput-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->f:Lcom/facebook/katana/RequestsAdapter$RequestState;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b:I

    .line 134
    iput-object p2, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a:Lcom/facebook/katana/model/FacebookUser;

    .line 135
    return-void
.end method


# virtual methods
.method final a()Lcom/facebook/katana/RequestsAdapter$RequestState;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->f:Lcom/facebook/katana/RequestsAdapter$RequestState;

    return-object v0
.end method

.method final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b:I

    .line 152
    invoke-virtual {p0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b()V

    .line 153
    return-void
.end method

.method final a(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->c:Landroid/graphics/Bitmap;

    .line 143
    invoke-virtual {p0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b()V

    .line 144
    return-void
.end method

.method final a(Lcom/facebook/katana/RequestsAdapter$RequestState;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->f:Lcom/facebook/katana/RequestsAdapter$RequestState;

    .line 169
    invoke-virtual {p0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b()V

    .line 170
    return-void
.end method

.method final declared-synchronized b()V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 239
    :goto_0
    monitor-exit p0

    return-void

    .line 183
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    new-instance v1, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/RequestsAdapter$FriendRequest$1;-><init>(Lcom/facebook/katana/RequestsAdapter$FriendRequest;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    const v1, 0x7f0802c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->a:Lcom/facebook/katana/model/FacebookUser;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    const v1, 0x7f0802ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 193
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    const v2, 0x7f0802cb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 194
    iget-object v2, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    const v4, 0x7f0802c9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 196
    iget-object v4, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->f:Lcom/facebook/katana/RequestsAdapter$RequestState;

    sget-object v5, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    if-ne v4, v5, :cond_2

    .line 197
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 198
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    new-instance v4, Lcom/facebook/katana/RequestsAdapter$OnClick;

    iget-object v5, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->e:Lcom/facebook/katana/RequestsAdapter;

    const/4 v6, 0x1

    invoke-direct {v4, v5, p0, v6}, Lcom/facebook/katana/RequestsAdapter$OnClick;-><init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/RequestsAdapter$FriendRequest;Z)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    new-instance v0, Lcom/facebook/katana/RequestsAdapter$OnClick;

    iget-object v4, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->e:Lcom/facebook/katana/RequestsAdapter;

    const/4 v5, 0x0

    invoke-direct {v0, v4, p0, v5}, Lcom/facebook/katana/RequestsAdapter$OnClick;-><init>(Lcom/facebook/katana/RequestsAdapter;Lcom/facebook/katana/RequestsAdapter$FriendRequest;Z)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 203
    const v0, 0x7f090038

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b:I

    if-ne v0, v3, :cond_1

    .line 205
    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    const v1, 0x7f0802c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 234
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->c:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 235
    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->e:Lcom/facebook/katana/RequestsAdapter;

    invoke-static {v0}, Lcom/facebook/katana/RequestsAdapter;->c(Lcom/facebook/katana/RequestsAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    iget v3, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 210
    :cond_2
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 211
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 213
    sget-object v0, Lcom/facebook/katana/RequestsAdapter$2;->a:[I

    iget-object v1, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->f:Lcom/facebook/katana/RequestsAdapter$RequestState;

    invoke-virtual {v1}, Lcom/facebook/katana/RequestsAdapter$RequestState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 229
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 230
    const v0, 0x7f090039

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 215
    :pswitch_0
    const v0, 0x7f0b0304

    .line 216
    goto :goto_2

    .line 218
    :pswitch_1
    const v0, 0x7f0b0308

    .line 219
    goto :goto_2

    .line 221
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 222
    const v0, 0x7f0b0303

    .line 223
    goto :goto_2

    .line 225
    :pswitch_3
    iget-object v0, p0, Lcom/facebook/katana/RequestsAdapter$FriendRequest;->d:Landroid/view/View;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    const v0, 0x7f0b0307

    goto :goto_2

    .line 237
    :cond_3
    const v1, 0x7f02018e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

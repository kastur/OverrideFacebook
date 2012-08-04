.class Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "AlbumsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/AlbumsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/media/AlbumsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/media/AlbumsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;-><init>(Lcom/facebook/katana/activity/media/AlbumsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljava/lang/String;J)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->a(Lcom/facebook/katana/activity/media/AlbumsActivity;)J

    move-result-wide v0

    cmp-long v0, p6, v0

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->a(Lcom/facebook/katana/activity/media/AlbumsActivity;Z)V

    .line 121
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->b(Lcom/facebook/katana/activity/media/AlbumsActivity;)Lcom/facebook/katana/util/logging/PerformanceMarker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->b(Lcom/facebook/katana/activity/media/AlbumsActivity;)Lcom/facebook/katana/util/logging/PerformanceMarker;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/util/logging/PerformanceMarker;->b(Landroid/content/Context;)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->c(Lcom/facebook/katana/activity/media/AlbumsActivity;)V

    .line 127
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->d(Lcom/facebook/katana/activity/media/AlbumsActivity;)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    const v2, 0x7f0b018d

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final c(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->removeDialog(I)V

    .line 143
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/media/AlbumsActivity;->a(Lcom/facebook/katana/activity/media/AlbumsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->e(Lcom/facebook/katana/activity/media/AlbumsActivity;)Lcom/facebook/katana/model/FacebookAlbum;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0, v2}, Lcom/facebook/katana/activity/media/AlbumsActivity;->a(Lcom/facebook/katana/activity/media/AlbumsActivity;Lcom/facebook/katana/model/FacebookAlbum;)Lcom/facebook/katana/model/FacebookAlbum;

    .line 148
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/AlbumsActivity;->removeDialog(I)V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/media/AlbumsActivity;->d(Lcom/facebook/katana/activity/media/AlbumsActivity;)V

    .line 158
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    const v2, 0x7f0b0188

    invoke-virtual {v1, v2}, Lcom/facebook/katana/activity/media/AlbumsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/facebook/katana/activity/media/AlbumsActivity$AlbumsAppSessionListener;->a:Lcom/facebook/katana/activity/media/AlbumsActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

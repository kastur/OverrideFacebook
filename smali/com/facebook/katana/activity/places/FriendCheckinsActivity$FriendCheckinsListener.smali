.class Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "FriendCheckinsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;


# direct methods
.method private constructor <init>(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;-><init>(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->a(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookCheckin;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    .line 112
    iget-object v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->a(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;Z)Z

    .line 113
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->b(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)V

    .line 115
    iget-object v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v1}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->a(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->a(Ljava/util/List;)V

    .line 116
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 126
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->b(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;Z)V

    .line 127
    return-void

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    const v3, 0x7f0b034a

    invoke-virtual {v2, v3}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, p2, p3}, Lcom/facebook/katana/util/StringUtils;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v2, v1}, Lcom/facebook/katana/util/Toaster;->a(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 137
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const-string v0, "places"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    if-ne p3, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->c(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;Z)Z

    .line 143
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g()V

    .line 144
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->a(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->e()V

    .line 147
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->a(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/places/FriendCheckinsAdapter;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/model/FacebookPost;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-static {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->c(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->a(Lcom/facebook/katana/activity/places/FriendCheckinsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 159
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/facebook/katana/activity/places/FriendCheckinsActivity$FriendCheckinsListener;->a:Lcom/facebook/katana/activity/places/FriendCheckinsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/places/FriendCheckinsActivity;->g()V

    .line 163
    :cond_0
    return-void
.end method

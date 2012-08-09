.class public Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;
.super Lcom/facebook/katana/binding/AppSessionListener;
.source "DropdownTagUsersAdapter.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;->a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/katana/binding/AppSession;ILjava/lang/Exception;Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;->a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-virtual {v0, p4}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 236
    :cond_0
    return-void
.end method

.method public final a(Lcom/facebook/katana/binding/ProfileImage;)V
    .locals 1
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter$DropdownAppSessionListener;->a:Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/media/DropdownTagUsersAdapter;->a(Lcom/facebook/katana/binding/ProfileImage;)V

    .line 241
    return-void
.end method

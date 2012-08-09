.class public Lcom/facebook/orca/contacts/picker/ContactPickerListItem;
.super Lcom/facebook/orca/activity/CustomViewGroup;
.source "ContactPickerListItem.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/facebook/orca/photos/tiles/UserTileView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/activity/CustomViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/facebook/orca/R$layout;->orca_contact_picker_list_item:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a(I)V

    .line 48
    sget v0, Lcom/facebook/orca/R$id;->contact_name:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/facebook/orca/R$id;->contact_status:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/facebook/orca/R$id;->contact_user_tile_image:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/photos/tiles/UserTileView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    .line 51
    sget v0, Lcom/facebook/orca/R$id;->contact_indicator:I

    invoke-virtual {p0, v0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    .line 52
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->b()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUser(Lcom/facebook/orca/users/User;)V

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->c()Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;->TWO_LINE:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow$RowStyle;

    if-ne v1, v2, :cond_1

    .line 73
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v1, v2, :cond_6

    .line 79
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v1}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_online_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    sget v1, Lcom/facebook/orca/R$string;->presence_online:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 105
    :goto_2
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c:Lcom/facebook/orca/photos/tiles/UserTileView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/facebook/orca/photos/tiles/UserTileView;->setUser(Lcom/facebook/orca/users/User;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->u()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v1, v2, :cond_3

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    sget v1, Lcom/facebook/orca/R$drawable;->orca_mobile_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    sget v1, Lcom/facebook/orca/R$string;->presence_mobile:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 90
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 91
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->x()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 92
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 94
    :cond_5
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 97
    :cond_6
    invoke-virtual {v0}, Lcom/facebook/orca/users/User;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/users/User$Type;->ADDRESS_BOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_7

    .line 98
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    invoke-virtual {v0}, Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;->a()Lcom/facebook/orca/users/UserWithIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserWithIdentifier;->b()Lcom/facebook/orca/users/UserIdentifier;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/users/UserIdentifier;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 102
    :cond_7
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public setContactRow(Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->e:Lcom/facebook/orca/contacts/picker/ContactPickerUserRow;

    .line 60
    invoke-direct {p0}, Lcom/facebook/orca/contacts/picker/ContactPickerListItem;->c()V

    .line 61
    return-void
.end method
